import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../base/app_colors.dart';

class QualityButton extends StatefulWidget {
  final int count;
  const QualityButton({super.key, required this.count});
  @override
  State<StatefulWidget> createState() => _QualityButton();
}

class _QualityButton extends State<QualityButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 28,
          width: 28,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(2),
                shape: const CircleBorder(),
                side: const BorderSide(width: 2, color: Colors.green)),
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svg/ic_apart.svg',
              height: 4,
              width: 2,
            ),
          ),
        ),
        //const SizedBox(width: 4),
        const Text('1',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 19,
                color: AppColor.color_85_171_96_1)),
        //const SizedBox(width: 4),
        SizedBox(
          height: 28,
          width: 28,
          child: ElevatedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(2),
              shape: const CircleBorder(),
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svg/ic_plus_round.svg',
              height: 13,
              width: 13,
            ),
          ),
        )
      ],
    );
  }
}
