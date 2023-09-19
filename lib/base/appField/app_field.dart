import 'package:flutter/material.dart';
import 'package:sg_grocery/base/appFont/app_font.dart';

class AppField extends StatelessWidget{
  final String text;
  final String hintText;
  const AppField({super.key, required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text, style: AppFont.textFiledStyle,),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              hintStyle: AppFont.textHintStyle,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ],
    );
  }
}