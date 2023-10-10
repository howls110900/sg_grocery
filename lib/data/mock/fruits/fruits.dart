import 'dart:ui';

import 'package:sg_grocery/base/app_colors.dart';

class Fruits {
  final String title;
  final String quality;
  final String price;
  final String img;
  late int count;
  late String icon;
  late Color buttonColor;
  late String textButton;
  Fruits(
      {required this.title,
      required this.quality,
      required this.price,
      required this.img,
      required this.count,
      required this.icon,
      required this.buttonColor,
        required this.textButton
      });
}

List<Fruits> listFruits = [
  Fruits(
      title: 'Strawberry',
      quality: '1 kg',
      price: '\$4',
      img: 'assets/png/strawberry_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
          .color_85_171_96_1,
      textButton: 'Subscribe'
  ),
  Fruits(
      title: 'Banana',
      quality: '1 kg',
      price: '\$2',
      img: 'assets/png/banana_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Kiwifruit',
      quality: '3 units',
      price: '\$4',
      img: 'assets/png/kiwifruit_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Grapes',
      quality: '1 kg',
      price: '\$4',
      img: 'assets/png/grapes_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Watermelon',
      quality: '1 kg',
      price: '\$2',
      img: 'assets/png/watermelon_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Orange',
      quality: '1 kg',
      price: '\$2',
      img: 'assets/png/orange_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Guava',
      quality: '1 kg',
      price: '\$2',
      img: 'assets/png/guava_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
  Fruits(
      title: 'Avocado',
      quality: '2 pcs.',
      price: '\$2',
      img: 'assets/png/avocado_fruits_page.png',
      count: 1,
      icon: 'assets/svg/ic_heart_white.svg',
      buttonColor: AppColor
      .color_85_171_96_1,
      textButton: 'Subscribe'),
];
