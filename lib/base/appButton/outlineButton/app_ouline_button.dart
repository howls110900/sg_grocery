import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/base/appColors/app_colors.dart';
import 'package:sg_grocery/base/appFont/app_font.dart';

class OutlineAppButton extends StatelessWidget{
  final Image png;
  final String textButton;
  const OutlineAppButton({super.key, required this.png, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            png,
            SizedBox(width: 5,),
            Text(textButton, style: AppFont.textButtonStyle,),
          ],
        ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          width: 1.0, color: AppColor.colorGreen,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      onPressed: () {  },
    );
  }
}