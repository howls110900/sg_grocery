import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class ListAdvertisments {
  final String img;
  final String title;
  final String sale;
  ListAdvertisments({required this.img, required this.title, required this.sale});
}

List<ListAdvertisments> listAdvertisment =  [
  ListAdvertisments(img: 'assets/png/advertisment2.png', title: 'Everyday\nEssentials', sale: '10% off'),
  ListAdvertisments(img: 'assets/png/advertisment2.png', title: 'Halloween', sale: '20% off'),
  ListAdvertisments(img: 'assets/png/advertisment2.png', title: 'Black\nFriday', sale: '30% off'),
];