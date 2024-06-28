import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:influencer/navbar/navigation.dart';
import 'package:influencer/pages/home.dart';
import 'package:influencer/pages/profile.dart';
import 'package:influencer/pages/setting.dart';
import 'package:influencer/views/screens/login.dart';

class AppPage {

static List<GetPage> routes = [

  GetPage(name: navbar, page: ()=> const NavBar()),
  GetPage(name: home, page: ()=> const Home()),
  GetPage(name: profile, page: ()=> const Profile()),
  GetPage(name: setting, page: ()=> const Setting()),
  GetPage(name: login, page: ()=> const LoginScreen()),

];


//
static getNavbar() => navbar;
static getLogin() => login;
static getHome() => home;
static getProfile() => profile;
static getSetting() => setting;



//
  static String navbar= '/';
  static String login= '/login';
  static String home= '/home';
  static String profile= '/profile';
  static String setting= '/setting';
}