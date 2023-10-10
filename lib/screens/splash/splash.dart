import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/base/app_string.dart';
import 'package:sg_grocery/data/prefs/prefs.dart';
import 'package:sg_grocery/screens/main_page/main_page.dart';
import '../../base/app_fonts.dart';
import '../login/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<StatefulWidget> createState() => _Splash();
}

class _Splash extends State<Splash> {
  startWidget() {
    if (checkLogin()) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }
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
              SvgPicture.asset(AppImage.icLogo),
              const SizedBox(
                width: 10,
              ),
              const Text(
                AppString.textSG,
                style: AppFont.textSGPlashStyle,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                AppString.textGrocery,
                style: AppFont.textGroceryStyle,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.textTitle,
                style: AppFont.textSplashStyle,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
