import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';

class OutlineAppButton extends StatelessWidget{
  final SvgPicture svg ;
  final String textButton;
  const OutlineAppButton({super.key, required this.svg, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            SizedBox(width: 5,),
            Text(textButton, style: AppFont.textButtonStyle,),
          ],
        ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          width: 1.0, color: AppColor.color_85_171_96_1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      onPressed: () {},
    );
  }
}