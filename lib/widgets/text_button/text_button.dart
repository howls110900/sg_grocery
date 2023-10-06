import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/base/app_fonts/app_fonts.dart';

import '../../base/app_colors/app_colors.dart';

class TextAppButton extends StatelessWidget{
  final fontWeight;
  final String text;
  final Function() onClickButton;
  const TextAppButton({super.key, required this.text, required this.fontWeight, required this.onClickButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onClickButton,
        child: Text(text,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            color: AppColor.colorGreen,
            fontWeight: fontWeight,
          )
    )
    );
  }

}