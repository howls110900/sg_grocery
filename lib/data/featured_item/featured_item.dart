import 'dart:ui';
import 'package:flutter/material.dart';

class ListFeaturedItem {
  final String img;
  final String title;
  final String price;
  final String quality;
  final Color color;
  ListFeaturedItem({required this.img, required this.title, required this.price, required this.quality, required this.color});
}

List<ListFeaturedItem> listFeaturedItem = [
  ListFeaturedItem(
    img: 'assets/png/granola_premium_almond.png',
    title: 'Granola\nPremium Almond',
    price: '\$22.00',
    quality: '1 kg',
    color: const Color.fromRGBO(255, 235, 229, 1)
      //color: Colors.black

  ),
  ListFeaturedItem(
    img: 'assets/png/sft_kiwi_slice_dried_2.png',
    title: 'SFT kiwi slice\n(Dried)',
    price: '\$4.00',
    quality: '3pcs',
    color: const Color.fromRGBO(249, 255, 218, 1)
      //color: Colors.orangeAccent
  ),
  ListFeaturedItem(
    img: 'assets/png/sft_kiwi_slice_dried_3.png',
    title: 'SFT kiwi slice\n(Dried)',
    price: '\$5.00',
    quality: '3pcs',
    color: const Color.fromRGBO(255, 237, 215, 1)
     // color: Colors.blue
  ),
];
