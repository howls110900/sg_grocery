import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../base/app_colors.dart';
import '../../base/app_fonts.dart';

class ExploreProducts extends StatelessWidget{
  final List list;
  const ExploreProducts({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 16, bottom: 8
      ),
      height: 148,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColor.color_242_252_244_1
                    //color: Colors.orangeAccent
                ),
                width: 116,
                //height: 176,
                child: Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        list[index].img,
                        height: 72,
                        width: 72,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            list[index].title,
                            style: AppFont.TextTitleExplorePageItem,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].quality,
                                style:
                                AppFont.TextQualityExplorePageItem,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                list[index].price,
                                style: AppFont.TextPriceExplorePageItem,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            height: 24,
                            width: 24,
                            child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/svg/ic_plus.svg',
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }

}
