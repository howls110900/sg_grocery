import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/data/prefs/prefs.dart';
import 'package:sg_grocery/screens/main_page/main_page.dart';
import 'package:sg_grocery/screens/register/register.dart';
import 'package:sg_grocery/widgets/divider_line/divider_line.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';
import '../../base/app_string.dart';
import '../../widgets/elevated_button/elevated_button.dart';
import '../../widgets/field/field.dart';
import '../../widgets/outline_button/ouline_button.dart';

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
        backgroundColor: AppColor.color_255_255_255_1,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppImage.icMiniLogo,
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
              AppImage.illustrator,
              height: 157,
              width: 152,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppString.textLogin,
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      color: AppColor.color_85_171_96_1),
                ),
              ],
            ),
             const AppField(text: AppString.textEmailId, hintText: AppString.textEnterYourEmailId ),
             const AppField(text: AppString.textPassword, hintText: AppString.textEnterYourPassword ),
            SizedBox(
              height: 50,
              width: 396,
              child: ElevatedAppButton(
                textButton: AppString.textLogin,
                onClick: () {
                  setLogin(true);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                },
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
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppString.textDontYoutHaveAnAccount,
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
                    AppString.textRegister,
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
