import 'package:flutter/material.dart';
import 'package:sg_grocery/base/appColors/app_colors.dart';
import 'package:sg_grocery/base/appField/app_field.dart';
import 'package:sg_grocery/base/appButton/outlineButton/app_ouline_button.dart';
import 'package:sg_grocery/base/appFont/app_font.dart';
import '../../base/appButton/elevatedButton/app_elevated_button.dart';

class LoginWithEmailID extends StatefulWidget {
  const LoginWithEmailID({super.key});

  @override
  State<StatefulWidget> createState() => _LoginWithEmailID();
}

class _LoginWithEmailID extends State<LoginWithEmailID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/png/Logo.png',
            width: 221,
            height: 53,
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/png/Illustrator.png',
            height: 157,
            width: 152,
          ),
          const SizedBox(
            height: 20,
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
          const SizedBox(
            height: 30,
          ),
          const AppField(text: 'Email Id', hintText: 'Enter Your Email Id'),
          const SizedBox(
            height: 30,
          ),
          const AppField(text: 'Password', hintText: 'Enter Your Password'),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 50,
            width: 396,
            child: ElevatedAppButton(
              textButton: 'Login',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                     child: const Divider(
                       color: AppColor.hintTextButton,
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Or continue with',
                style: AppFont.textHintStyle,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                     child: const Divider(
                       color: AppColor.hintTextButton,
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 178,
                child: OutlineAppButton(
                  png: Image.asset(
                    'assets/png/iconGoogle.png',
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
                  png: Image.asset(
                    'assets/png/iconFacebook.png',
                    height: 32,
                    width: 32,
                  ),
                  textButton: "Facebook",
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t You Have an Account? ',
                style: AppFont.textHintStyle,
              ),
              Text(
                'Register',
                style: AppFont.textRegisterStyle,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
