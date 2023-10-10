import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/base/app_string.dart';
import 'package:sg_grocery/screens/fruits/fruits.dart';
import 'package:sg_grocery/widgets/explore_products/explore_products.dart';
import 'package:sg_grocery/widgets/home_title_products/home_title_products.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';
import '../../data/mock/bakery_items/bakery_item.dart';
import '../../data/mock/dairy_products/dairy_products.dart';
import '../../data/mock/fruits_explore/fruits_explore.dart';
import '../../data/mock/groceries_products/groceries_product.dart';
import '../../data/mock/vegetables/vegetables.dart';

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
            backgroundColor: AppColor.color_255_255_255_1,
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
                icon: SvgPicture.asset(AppImage.backButton)),
            centerTitle: true,
            title: Container(
              child: const Text(
                AppString.textExplore,
                style: AppFont.TextTitleExplorePageStyle,
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
                child: TitleProducts(
                  title: AppString.textGroceries,
                  text: AppString.textSeeAll,
                  fontWeight: FontWeight.w700,
                  onClickButton: () {},
                )),
            ExploreProducts(list: listGroceriesProduct),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: AppString.textVegetables,
                  text: AppString.textSeeAll,
                  fontWeight: FontWeight.w700,
                  onClickButton: () {},
                )),
            ExploreProducts(list: listVegetables),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: AppString.textFruits,
                  text: AppString.textSeeAll,
                  fontWeight: FontWeight.w700,
                  onClickButton: () {
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
                  title: AppString.textDairyProducts,
                  text: AppString.textSeeAll,
                  fontWeight: FontWeight.w700,
                  onClickButton: () {},
                )),
            ExploreProducts(list: listDairyProducts),
            Container(
                margin: const EdgeInsets.only(left: 14, right: 8, bottom: 8),
                child: TitleProducts(
                  title: AppString.textBakeryItems,
                  text: AppString.textSeeAll,
                  fontWeight: FontWeight.w700,
                  onClickButton: () {},
                )),
            ExploreProducts(list: listBakeryItems),
            const SizedBox(
              height: 12,
            )
          ],
        )));
  }
}
