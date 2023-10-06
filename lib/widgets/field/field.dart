import 'package:flutter/material.dart';
import '../../base/app_fonts/app_fonts.dart';

class AppField extends StatelessWidget {
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
              text,
              style: AppFont.textFiledStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
