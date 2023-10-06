import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../base/app_colors/app_colors.dart';
import '../../base/app_fonts/app_fonts.dart';

class DividerLine extends StatelessWidget {
  final String text;
  const DividerLine({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text(
          text,
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
    );
  }
}
