import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/widgets/quality_widget/quality_widget.dart';
import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';
import '../../base/app_images.dart';
import '../../base/app_string.dart';
import '../../data/mock/cart/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.color_255_255_255_1,
            elevation: 0,
            leadingWidth: 40,
            toolbarHeight: 72,
            leading: Container(
              margin: const EdgeInsets.only(top: 20, left: 4),
              child: IconButton(
                  onPressed: () => {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const MainPage())
                        // ),
                      },
                  icon: SvgPicture.asset(AppImage.backButton)),
            ),
            centerTitle: true,
            title: Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                AppString.textMyCart,
                style: AppFont.TextTitleExplorePageStyle,
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            height: 3000,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                    child: Row(
                  children: [
                    const Text(
                      'Tomorrow, 7 AM - 9 PM',
                      style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/svg/ic_drop_list.svg'))
                  ],
                )),
                Container(
                  height: 400,
                  margin: const EdgeInsets.only(top: 12),
                  child: ListView.builder(
                    itemCount: listCart.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              //spreadRadius: 0.01,
                              blurRadius: 0.1,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(bottom: 12),
                        padding:
                            const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        height: 118,
                        width: 396,
                        child: Row(
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(249, 249, 249, 1)),
                                height: 88,
                                width: 88,
                                margin: const EdgeInsets.only(
                                    left: 4, top: 8, bottom: 8, right: 16),
                                child: Center(
                                  child: Image.asset(listCart[index].img),
                                )),
                            Stack(
                              children: [
                                Container(
                                  width: 164,
                                  margin: const EdgeInsets.only(
                                      left: 4, top: 8, bottom: 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(listCart[index].title,
                                          style:
                                              AppFont.textCartItemTitleStyle),
                                      Text(listCart[index].kilogram,
                                          style: AppFont
                                              .textCartItemKilogramStyle),
                                      Row(
                                        children: [
                                          Text(listCart[index].price,
                                              style: AppFont
                                                  .textCartItemPriceStyle),
                                          const SizedBox(width: 12),
                                          Text(listCart[index].sale,
                                              style: AppFont
                                                  .textCartItemSaleStyle),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                    height: 28,
                                    width: 28,
                                    margin: const EdgeInsets.only(left: 224),
                                    child: Center(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                              AppImage.icClose)),
                                    )),
                                Container(
                                  width: 100,
                                  height: 36,
                                  margin:
                                      const EdgeInsets.only(left: 144, top: 62),
                                  child: const QualityButton(
                                    count: 1,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(color: Colors.white)),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 14, top: 10, bottom: 10, right: 16),
                            height: 104,
                            width: 278,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(96, 195, 112, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.1),
                              //     //spreadRadius: 0.01,
                              //     blurRadius: 0.1,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers1),
                                    SvgPicture.asset(AppImage.icDecorVouchers1)
                                  ],
                                ),
                                Container(
                                  height: 82,
                                  //width: 184,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.orangeAccent,
                                  // ),
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('FLAT',
                                          style: TextStyle(
                                              fontFamily: 'Bold',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                      Text('50% off',
                                          style: TextStyle(
                                              fontFamily: 'Bold',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 19,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                      Text('on your first order',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                              fontSize: 12,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                      Text('Use coupon code to get OFFER',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                              fontSize: 12,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers1),
                                    SvgPicture.asset(AppImage.icDecorVouchers1)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 104,
                            width: 108,
                            padding: const EdgeInsets.only(
                                left: 14, top: 10, bottom: 10, right: 16),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(96, 195, 112, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.1),
                              //     //spreadRadius: 0.01,
                              //     blurRadius: 0.1,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers1),
                                    SvgPicture.asset(AppImage.icDecorVouchers1)
                                  ],
                                ),
                                Container(
                                  height: 56,
                                  width: 84,
                                  // decoration: const BoxDecoration(
                                  //   color: Colors.orangeAccent,
                                  // ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'code',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w200,
                                            fontSize: 13,
                                            color:
                                                AppColor.color_255_255_255_1),
                                      ),
                                      Text(
                                        'GETFIRST',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color:
                                                AppColor.color_255_255_255_1),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers1),
                                    SvgPicture.asset(AppImage.icDecorVouchers1)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 104,
                        margin: const EdgeInsets.only(left: 269),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              //margin: EdgeInsets.only(left: 268),
                              height: 10,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  border: Border(top: BorderSide.none),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            ),
                            Container(
                              height: 10,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(color: Colors.white)),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 14, top: 10, bottom: 10, right: 16),
                            height: 104,
                            width: 278,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(214, 197, 51, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.1),
                              //     //spreadRadius: 0.01,
                              //     blurRadius: 0.1,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers2),
                                    SvgPicture.asset(AppImage.icDecorVouchers2)
                                  ],
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(bottom: 16, top: 6),
                                  //height: 72,
                                  width: 200,
                                  // decoration: BoxDecoration(
                                  //   color: Colors.orangeAccent,
                                  // ),
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Get',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: AppColor
                                                      .color_255_255_255_1)),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('\$5 off',
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 17,
                                                  color: AppColor
                                                      .color_255_255_255_1)),
                                        ],
                                      ),
                                      Text('on minimum purchase of \$20',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                              fontSize: 12,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                      Text('Applicable on Grocery only.',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w200,
                                              fontSize: 12,
                                              color: AppColor
                                                  .color_255_255_255_1)),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers2),
                                    SvgPicture.asset(AppImage.icDecorVouchers2)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 104,
                            width: 108,
                            padding: const EdgeInsets.only(
                                left: 14, top: 10, bottom: 10, right: 16),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(214, 197, 51, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.1),
                              //     //spreadRadius: 0.01,
                              //     blurRadius: 0.1,
                              //     offset: Offset(
                              //         0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers2),
                                    SvgPicture.asset(AppImage.icDecorVouchers2)
                                  ],
                                ),
                                Container(
                                  height: 54,
                                  width: 84,
                                  // decoration: const BoxDecoration(
                                  //   color: Colors.orangeAccent,
                                  // ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'code',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w200,
                                            fontSize: 13,
                                            color:
                                                AppColor.color_255_255_255_1),
                                      ),
                                      Text(
                                        'DOLLAR5',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color:
                                                AppColor.color_255_255_255_1),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(AppImage.icDecorVouchers2),
                                    SvgPicture.asset(AppImage.icDecorVouchers2)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 104,
                        margin: const EdgeInsets.only(left: 269),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              //margin: EdgeInsets.only(left: 268),
                              height: 10,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  border: Border(top: BorderSide.none),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            ),
                            Container(
                              height: 10,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Center(
                      child: Text('Promo code can be applied on payment screen',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(116, 202, 130, 0.6))),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Row(
                    children: [
                      Text('Payment details',
                          style: TextStyle(
                              fontFamily: 'Bold',
                              fontWeight: FontWeight.w700,
                              fontSize: 21,
                              color: AppColor.color_66_66_66_1))
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 28),
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 10),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total MRP',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Color.fromRGBO(
                                              155, 155, 155, 1))),
                                  Text('\$9.97',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Color.fromRGBO(
                                              155, 155, 155, 1))),
                                ],
                              ),
                              Divider(
                                height: 20,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(244, 244, 244, 1),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Discount',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(155, 155, 155, 1)),
                                  ),
                                  Text(
                                    '\$0.00',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(155, 155, 155, 1)),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 20,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                                color: Color.fromRGBO(244, 244, 244, 1),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Shipping Charges',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(155, 155, 155, 1)),
                                  ),
                                  Text(
                                    'Free',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(155, 155, 155, 1)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 36,
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              color: Color.fromRGBO(220, 255, 226, 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color.fromRGBO(67, 67, 67, 1))),
                              Text('\$ 9.97',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color.fromRGBO(67, 67, 67, 1)))
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.color_85_171_96_1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Container(
                            height: 50,
                            width: 164,
                            child: const Center(
                              child: Text(
                                'Checkout',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600),
                              ),
                            ))))
              ],
            ),
          ),
        ));
  }
}
