import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/app_colors.dart';

class ElevatedAppButton extends StatelessWidget {
  final String textButton;
  final Function() onClick;
  const ElevatedAppButton(
      {super.key, required this.textButton, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.color_85_171_96_1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onClick,
        child: Text(
          textButton,
          style: const TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
        ));
  }
}
