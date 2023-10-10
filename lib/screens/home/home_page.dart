import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/base/app_string.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';
import '../../data/mock/advertisment/advertisment.dart';
import '../../data/mock/categories/categories.dart';
import '../../data/mock/deals_of_the_week/deals_of_the_week.dart';
import '../../data/mock/featured_item/featured_item.dart';
import '../../data/mock/products/products.dart';
import '../../widgets/home_title_products/home_title_products.dart';
import '../../widgets/text_button/text_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int checkIndex = 0;
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.color_255_255_255_1,
        toolbarHeight: 75,
        elevation: 0,
        title: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 4, right: 4),
            child: Column(
              children: [
                Container(
                    //padding: const EdgeInsets.only(left: 5),
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColor.color_255_255_255_1,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 11)
                        ]),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(AppImage.icSearch),
                        const SizedBox(width: 10),
                        const SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: AppString.textSearchProductsAndBrands,
                                hintStyle: TextStyle(
                                    color: AppColor.color_217_217_217_1),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10)),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            advertisement(heightScreen),
            indicator(),
            topCategories(),
            listCategorie(heightScreen, widthScreen),
            topProduct(),
            listProduct(),
            banner(),
            dealsOfTheWeek(),
            listDealsOfTheWeeks(),
            featuredItem(),
            listFeaturedItems(),
            const SizedBox(
              height: 104,
            ),
          ],
        ),
      ),
    );
  }

  advertisement(double heightScreen) {
    return Container(
        height: heightScreen / 6,
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        padding: const EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
            color: AppColor.color_85_171_96_1,
            borderRadius: BorderRadius.circular(10)),
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                checkIndex = value;
              });
            },
            itemCount: listAdvertisment.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        listAdvertisment[index].title,
                        style: AppFont.titleAdvertismentStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        listAdvertisment[index].sale,
                        style: AppFont.saleTextAdvertismentStyle,
                      ),
                    ],
                  ),
                  Image.asset(
                    listAdvertisment[index].img,
                    height: 126,
                    width: 199,
                  ),
                ],
              );
            }));
  }

  indicator() {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          containerItem(checkIndex, 0),
          const SizedBox(width: 2),
          containerItem(checkIndex, 1),
          const SizedBox(width: 2),
          containerItem(checkIndex, 2)
        ],
      ),
    );
  }

  topCategories() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 16, right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppString.textTopCategories,
                style: AppFont.textExploreButton,
              ),
              TextAppButton(
                text: AppString.textExploreAll,
                fontWeight: FontWeight.w600,
                onClickButton: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  listCategorie(double heightScreen, double widthScreen) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      height: heightScreen / 7,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              width: widthScreen / 5.1,
              height: heightScreen / 7,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: (heightScreen / 7) - (heightScreen / 9)),
                    height: heightScreen / 9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.color_242_252_244_1),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: (heightScreen / 7) - (heightScreen / 24)),
                    height: heightScreen / 24,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: AppColor.color_85_171_96_1),
                    child: Center(
                      child: Text(listCategories[index].title,
                          style: AppFont.CategoriesTitleStyle),
                    ),
                  ),
                  Image.asset(
                    listCategories[index].img,
                    height: 80,
                    width: 80,
                  )
                ],
              ),
            );
          }),
    );
  }

  topProduct() {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 8, bottom: 10),
        child: TitleProducts(
          title: AppString.textTopProducts,
          text: AppString.textExploreAll,
          fontWeight: FontWeight.w600,
          onClickButton: () {},
        ));
  }

  listProduct() {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
      ),
      height: 180,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColor.color_242_252_244_1,
                //color: Colors.orangeAccent,
              ),
              width: 148,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 108),
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Text(listProducts[index].title,
                                style: AppFont.ProductsNameStyle),
                          ],
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Text(listProducts[index].price,
                                style: AppFont.ProductsPriceStyle),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 18, left: 32),
                    child: Image.asset(
                      listProducts[index].img,
                      height: 84,
                      width: 78,
                    ),
                  ),
                  Container(
                      width: 52,
                      height: 36,
                      margin: const EdgeInsets.only(top: 12),
                      decoration: const BoxDecoration(
                        color: AppColor.color_85_171_96_1,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            listProducts[index].sale,
                            style: AppFont.ProductsSaleStyle,
                          ),
                        ],
                      ))
                ],
              ),
            );
          }),
    );
  }

  banner() {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8),
        child: Stack(
          children: [
            Container(
              width: 396,
              height: 191,
              child:
                  const Image(image: AssetImage(AppImage.frameBanner)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, top: 20),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.textBanner1,
                        style: AppFont.GetBannerTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppString.textBanner2,
                        style: AppFont.ProductsTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: 120,
                height: 30,
                margin: const EdgeInsets.only(left: 18, top: 120),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.color_85_171_96_1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      AppString.textShopNow,
                      style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                    ))),
            Container(
              margin: const EdgeInsets.only(left: 220, top: 44),
              child: Image.asset(
                AppImage.productBanner,
                width: 158,
                height: 130,
              ),
            )
          ],
        ));
  }

  dealsOfTheWeek() {
    return Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: TitleProducts(
          title: AppString.textDealsOfTheWeek,
          text: AppString.textExploreAll,
          fontWeight: FontWeight.w600,
          onClickButton: () {},
        ));
  }

  listDealsOfTheWeeks() {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        left: 16,
      ),
      height: 156,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listDealsOfTheWeek.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                //color: Colors.orangeAccent
                color: AppColor.color_242_252_244_1,
              ),
              width: 148,
              height: 156,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    listDealsOfTheWeek[index].img,
                    height: 81,
                    width: 92,
                  ),
                  Text(
                    listDealsOfTheWeek[index].title,
                    style: AppFont.DealsWeekTitleStyle,
                  ),
                  Text(
                    listDealsOfTheWeek[index].sale,
                    style: AppFont.DealsWeekTextStyle,
                  )
                ],
              ),
            );
          }),
    );
  }

  featuredItem() {
    return Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: TitleProducts(
          title: AppString.textFeaturedItem,
          text: AppString.textExploreAll,
          fontWeight: FontWeight.w600,
          onClickButton: () {},
        ));
  }

  listFeaturedItems() {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      height: 176,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listFeaturedItem.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: listFeaturedItem[index].color
                    //color: Color.fromRGBO(249, 255, 218, 1)
                    ),
                width: 148,
                //height: 176,
                child: Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        listFeaturedItem[index].img,
                        height: 84,
                        width: 124,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            listFeaturedItem[index].title,
                            style: AppFont.TextFeaturedTitleStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            listFeaturedItem[index].price,
                            style: AppFont.TextFeaturedPriceStyle,
                          ),
                          Text(
                            listFeaturedItem[index].quality,
                            style: AppFont.TextFeaturedQualityStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}

containerItem(int checkIndex, int i) {
  return Container(
    height: 5,
    width: i == checkIndex ? 16 : 12,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: i == checkIndex ? AppColor.color_85_171_96_1 : AppColor.color_133_143_173_1),
  );
}
