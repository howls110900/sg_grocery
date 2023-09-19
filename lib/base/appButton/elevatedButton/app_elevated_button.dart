import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery/base/appColors/app_colors.dart';
import 'package:sg_grocery/base/appFont/app_font.dart';

class ElevatedAppButton extends StatelessWidget{
  final String textButton;
  const ElevatedAppButton({super.key, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.colorGreen,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        ),),
        onPressed: () {},
        child: Text(
          textButton,
          style: const TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
        ));
  }
}