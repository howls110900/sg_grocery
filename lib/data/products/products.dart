import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class ListProducts {
  final String img;
  final String title;
  final String sale;
  final String price;
  ListProducts(
      {required this.img, required this.title, required this.sale, required this.price,});
}

List<ListProducts> listProducts = [
  ListProducts(
      img: 'assets/png/fortune_rice.png',
      title: 'Fortune rice',
      sale: '37%\noff',
      price: '\$3/kg'
  ),
  ListProducts(
      img: 'assets/png/fresh_avocado.png',
      title: 'Fresh Avocado',
      sale: '37%\noff',
      price: '\$3/kg'
  ),
  ListProducts(
      img: 'assets/png/organic_tomatoes.png',
      title: 'Tomatoes',
      sale: '37%\noff',
      price: '\$3/kg'
  ),
];
