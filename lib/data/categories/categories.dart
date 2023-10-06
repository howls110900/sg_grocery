import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class ListCategories {
  final String img;
  final String title;
  ListCategories({required this.img, required this.title,});
}

List<ListCategories> listCategories =  [
  ListCategories(img: 'assets/png/groecries.png', title: 'Groecries'),
  ListCategories(img: 'assets/png/vegetable.png', title: 'Vegetables'),
  ListCategories(img: 'assets/png/fruit.png', title: 'Fruits'),
  ListCategories(img: 'assets/png/beverages.png', title: 'Beverages'),

];