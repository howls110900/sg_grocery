import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../base/app_fonts/app_fonts.dart';
import '../login/login_page.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});
  @override
  State<StatefulWidget> createState() => _Splash();

}

class _Splash extends State<Splash>{
  startWidget() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () => startWidget());
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg/ic_logo.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'SG',
                    style: AppFont.textSGPlashStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Grocery',
                    style: AppFont.textGroceryStyle,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your needs in just one place',
                    style: AppFont.textSplashStyle,
                  ),
                ],
              ),
            ],
          )),
    );
  }

}
