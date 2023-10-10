import 'package:flutter/material.dart';
import 'package:sg_grocery/screens/details/detail_page.dart';
import 'package:sg_grocery/screens/fruits/fruits.dart';
import 'package:sg_grocery/screens/home/home_page.dart';
//import 'package:sg_grocery/screens/login/login_page.dart';
import 'package:sg_grocery/screens/main_page/main_page.dart';
import 'package:sg_grocery/screens/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:sg_grocery/screens/login_page.dart';
//import 'package:sg_grocery/screens/splash/splash.dart';
SharedPreferences? prefs;

void main() {
  runApp(const MyApp());
  initSharedPreferences();
}

Future<void> initSharedPreferences() async  {
  prefs = await SharedPreferences.getInstance();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SGGrocery()//SGGrocery(),
    );
  }
}

class SGGrocery extends StatefulWidget{
  const SGGrocery({super.key});

  @override
  State<StatefulWidget> createState() => _SGGrocery();
}

class _SGGrocery extends State<SGGrocery> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splash(),
    );
  }

}


