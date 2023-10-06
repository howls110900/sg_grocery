import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/widgets/divider_line/divider_line.dart';
import 'package:sg_grocery/widgets/elevated_button/elevated_button.dart';
import 'package:sg_grocery/widgets/field/field.dart';
import '../../base/app_colors/app_colors.dart';
import '../../base/app_fonts/app_fonts.dart';
import '../../widgets/outline_button/ouline_button.dart';
//import '../../widgets/text_button/text_button.dart';
import '../login/login_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backGroundWhite,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/mini_logo.svg',
              width: 221,
              height: 53,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          margin: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        color: AppColor.colorGreen),
                  ),
                ],
              ),
              const AppField(
                text: 'Your Name',
                hintText: 'Enter Your Name',
              ),
              const AppField(
                text: 'Email Id',
                hintText: 'Enter Your Email Id',
              ),
              const AppField(
                text: 'Password',
                hintText: 'Enter Your Password',
              ),
              const AppField(
                text: 'Confirm Password',
                hintText: 'Confirm Your Password',
              ),
              const AppField(
                text: 'Contact Number',
                hintText: 'Enter Your Contact Number',
              ),
              SizedBox(
                height: 50,
                width: 396,
                child: ElevatedAppButton(
                    textButton: 'Register',
                  onClick: (){},
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have an Account?',
                    style: AppFont.textHintStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: AppFont.textRegisterStyle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
