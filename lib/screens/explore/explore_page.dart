import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/data/bakery_items/bakery_item.dart';
import 'package:sg_grocery/data/groceries_products/groceries_product.dart';
import 'package:sg_grocery/data/vegetables/vegetables.dart';
import 'package:sg_grocery/screens/fruits/fruits.dart';
import 'package:sg_grocery/widgets/explore_products/explore_products.dart';
import 'package:sg_grocery/widgets/home_title_products/home_title_products.dart';
import '../../base/app_colors/app_colors.dart';
import '../../base/app_fonts/app_fonts.dart';
import '../../data/dairy_products/dairy_products.dart';
import '../../data/fruits_explore/fruits_explore.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});
  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backGroundWhite,
            elevation: 0,
            leadingWidth: 40,
            leading: IconButton(
                onPressed: () => {
                      // Navigator.pop(
                      //     context,
                      //     // MaterialPageRoute(
                      //     //     builder: (context) => const MainPage())
                      //    ),
                    },
                icon: SvgPicture.asset('assets/svg/back_button.svg')),
            centerTitle: true,
            title: Container(
              child: const Text(
                'Explore',
                style: AppFont.TextTitleExplorePageStyle,
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
                child:  TitleProducts(
                  title: 'Groceries',
                  text: 'See all',
                  fontWeight: FontWeight.w700,
                  onClickButton: (){},
                )),
            ExploreProducts(list: listGroceriesProduct),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: 'Vegetables',
                  text: 'See all',
                  fontWeight: FontWeight.w700,
                  onClickButton: (){},
                )),
            ExploreProducts(list: listVegetables),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: 'Fruits',
                  text: 'See all',
                  fontWeight: FontWeight.w700,
                  onClickButton: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FruitsPage()));
                  },
                )),
            ExploreProducts(list: listFruitsExplore),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: 'Dairy Products',
                  text: 'See all',
                  fontWeight: FontWeight.w700,
                  onClickButton: (){},
                )),
            ExploreProducts(list: listDairyProducts),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: 'Bakery Items',
                  text: 'See all',
                  fontWeight: FontWeight.w700,
                  onClickButton: (){},
                )),
            ExploreProducts(list: listBakeryItems),
            const SizedBox(
              height: 12,
            )
          ],
        )));
  }
}
