import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/screens/explore/explore_page.dart';

import '../../base/app_colors/app_colors.dart';
import '../../base/app_fonts/app_fonts.dart';
import '../main_page/main_page.dart';

class CartPage extends StatefulWidget {

  const CartPage({super.key});
  @override
  State<StatefulWidget> createState() => _CartPageState();

}

class _CartPageState extends State<CartPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.backGroundWhite,
          elevation: 0,
          leadingWidth: 40,
          leading: IconButton(
              onPressed: () => {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const MainPage())
                // ),
              },
              icon: SvgPicture.asset('assets/svg/back_button.svg')),
          centerTitle: true,
          title: Container(
            child:
            const Text('Cart', style: AppFont.TextTitleExplorePageStyle,),
          )
      ),
    );
  }

}