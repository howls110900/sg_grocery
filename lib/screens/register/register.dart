import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/base/app_string.dart';
import 'package:sg_grocery/widgets/divider_line/divider_line.dart';
import 'package:sg_grocery/widgets/elevated_button/elevated_button.dart';
import 'package:sg_grocery/widgets/field/field.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';
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
        backgroundColor: AppColor.color_255_255_255_1,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImage.icMiniLogo,
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
                    AppString.textRegister,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        color: AppColor.color_85_171_96_1),
                  ),
                ],
              ),
              const AppField(
                text: AppString.textYourName ,
                hintText: AppString.textEnterYourName,
              ),
              const AppField(
                text: AppString.textEmailId,
                hintText: AppString.textEnterYourEmailId,
              ),
              const AppField(
                text: AppString.textPassword,
                hintText: AppString.textEnterYourPassword,
              ),
              const AppField(
                text: AppString.textConfirmPassword,
                hintText: AppString.textConfirmYourPassword,
              ),
              const AppField(
                text: AppString.textContactNumber,
                hintText: AppString.textEnterYourContactNumber,
              ),
              SizedBox(
                height: 50,
                width: 396,
                child: ElevatedAppButton(
                    textButton: AppString.textRegister,
                  onClick: (){},
                ),
              ),
              const DividerLine(text: AppString.textOrContinueWith),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 178,
                    child: OutlineAppButton(
                      svg: SvgPicture.asset(
                        AppImage.icGoogle,
                        height: 32,
                        width: 32,
                      ),
                      textButton: AppString.textGoogle,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 189,
                    child: OutlineAppButton(
                      svg: SvgPicture.asset(
                        AppImage.icFacebook,
                        height: 32,
                        width: 32,
                      ),
                      textButton: AppString.textFacebook,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppString.textAlreadyHaveAnAccount,
                    style: AppFont.textHintStyle,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      AppString.textLogin,
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
