import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/widgets/text_button/text_button.dart';

import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';

class TitleProducts extends StatelessWidget {
  final String title;
  final fontWeight;
  final String text;
  final Function() onClickButton;
  const TitleProducts(
      {super.key,
      required this.title,
      required this.text,
      required this.fontWeight,
        required this.onClickButton
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppFont.textExploreButton,
        ),
        TextButton(
            onPressed: onClickButton,
            child: Text(text,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  color: AppColor.color_85_171_96_1,
                  fontWeight: fontWeight,
                )))
      ],
    );
  }
}
