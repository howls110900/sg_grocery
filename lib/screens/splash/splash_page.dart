import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashPage extends StatelessWidget{
  const splashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child:  Image.asset('assets/png/SG Grocery title.png'),
      ),
    );
  }

}