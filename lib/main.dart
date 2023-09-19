import 'package:flutter/material.dart';
import 'package:sg_grocery/screens/login/login_page.dart';
//import 'package:sg_grocery/screens/login_page.dart';
import 'package:sg_grocery/screens/splash/splash_page.dart';
//import 'package:sg_grocery/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginWithEmailID(),
    );
  }
}
