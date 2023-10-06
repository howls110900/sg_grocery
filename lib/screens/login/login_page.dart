import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/screens/main_page/main_page.dart';
import 'package:sg_grocery/screens/register/register.dart';
import 'package:sg_grocery/widgets/divider_line/divider_line.dart';
import '../../base/app_colors/app_colors.dart';
import '../../base/app_fonts/app_fonts.dart';
import '../../widgets/elevated_button/elevated_button.dart';
import '../../widgets/field/field.dart';
import '../../widgets/outline_button/ouline_button.dart';
import '../home/home_page.dart';
//import '../../widgets/text_button/text_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backGroundWhite,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/mini_logo.svg',
                  width: 221,
                  height: 53,
                ),
              ],
            ),
          ],
        ),
      ),
        body: SingleChildScrollView(
          child: Container(
      height: 800,
      margin: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/svg/Illustrator.svg',
              height: 157,
              width: 152,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      color: AppColor.colorGreen),
                ),
              ],
            ),
            const AppField(text: 'Email Id', hintText: 'Enter Your Email Id'),
            const AppField(text: 'Password', hintText: 'Enter Your Password'),
            SizedBox(
              height: 50,
              width: 396,
              child: ElevatedAppButton(
                textButton: 'Login',
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                },
              ),
            ),
            const DividerLine(text: 'Or continue with'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 178,
                  child: OutlineAppButton(
                    svg: SvgPicture.asset(
                      'assets/svg/ic_google.svg',
                      height: 32,
                      width: 32,
                    ),
                    textButton: "Google",
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 189,
                  child: OutlineAppButton(
                    svg: SvgPicture.asset(
                      'assets/svg/ic_facebook.svg',
                      height: 32,
                      width: 32,
                    ),
                    textButton: "Facebook",
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t You Have an Account?',
                  style: AppFont.textHintStyle,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()));
                  },
                  child: const Text(
                    'Register',
                    style: AppFont.textRegisterStyle,
                  ),
                ),
              ],
            )
          ],
      ),
    ),
        ));
  }
}
