import 'package:flutter/material.dart';
import 'package:influencer/routes/route.dart';
import 'package:influencer/views/screens/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
   // home: LoginScreen(),
   debugShowCheckedModeBanner: false,
   initialRoute: AppPage.getLogin(),
   getPages: AppPage.routes,
  ));
}
