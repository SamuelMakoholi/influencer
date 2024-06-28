import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:influencer/controllers/controller.dart';
import 'package:influencer/pages/home.dart';
import 'package:influencer/pages/profile.dart';
import 'package:influencer/pages/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [Home(), Profile(), Setting()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          elevation: 10,
          items: [
            _BottombarItem(IconlyBold.home, "Home"),
            _BottombarItem(IconlyBold.user_2, "Profile"),
            _BottombarItem(IconlyBold.setting, "Settings"),
          ],
        ),
      );
    });
  }
}

_BottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
