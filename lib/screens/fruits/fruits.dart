import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../base/app_colors/app_colors.dart';
import '../../data/fruits/fruits.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});
  @override
  State<StatefulWidget> createState() => _FruitsPageState();
}
int count = 1;
String heartIcon = '' ;
bool checkHeartIcon = true;
String textButton = '';
late Color colorButton;
bool checkButton = true;
class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.colorGreen,
            elevation: 0,
            leadingWidth: 40,
            leading: IconButton(
              onPressed: () => {
                Navigator.pop(
                    context,
                    // MaterialPageRoute(
                    //     builder: (context) => const MainPage())
                   ),
              },
              icon: SvgPicture.asset('assets/svg/ic_back_button_white.svg'),
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Fruits',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
              ],
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  color: AppColor.colorGreen),
              Container(
                padding: const EdgeInsets.only(left: 16, top: 24),
                decoration: const BoxDecoration(
                    color: AppColor.backGroundWhite,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                margin: const EdgeInsets.only(top: 32),
                height: 1100,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 370,
                            childAspectRatio: 5 / 6.2,
                            //crossAxisSpacing: 2,
                            //mainAxisSpacing: 14
                        ),
                    itemCount: listFruits.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                          margin: const EdgeInsets.only( bottom: 16,
                            right: 16,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.colorBackGroundExplore
                              //color: Colors.orangeAccent
                          ),
                          //width: 196,
                          height: 240,
                          child: Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                    left: 135,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if(checkHeartIcon) {
                                            listFruits[index].icon = 'assets/svg/ic_heart_red.svg';
                                            checkHeartIcon = false;
                                          }
                                          else{
                                            listFruits[index].icon = 'assets/svg/ic_heart_white.svg';
                                            checkHeartIcon = true;
                                          }
                                        });
                                      },
                                      icon: SvgPicture.asset(listFruits[index].icon
                                          ))),
                              Container(
                                margin: const EdgeInsets.only(top: 28 , left: 24),
                                child: Image.asset(listFruits[index].img, height: 82 ,width: 132,),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 110, left: 8, right: 8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Text(listFruits[index].title,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Montserrat',
                                                fontSize: 18,
                                                color: AppColor
                                                    .colorTitleExplorePageItem)),
                                        const SizedBox(width: 8),
                                        Text('(${listFruits[index].quality})',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                color: AppColor
                                                    .colorTitleExplorePageItem)
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(listFruits[index].price,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat',
                                                fontSize: 18,
                                                color: AppColor
                                                    .colorBottomNavigator)
                                        ),
                                        //SizedBox( width: 88,),
                                        Container(
                                          margin: const EdgeInsets.only(left: 84),
                                          width: 56,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 18,
                                                width: 18,
                                                child: OutlinedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          padding:
                                                              const EdgeInsets.all(2),
                                                          shape: const CircleBorder(),
                                                          side:
                                                              const BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .green)),
                                                  onPressed: () {
                                                    setState(() {
                                                      listFruits[index].count = listFruits[index].count - 1;
                                                    });
                                                  },
                                                  child: SvgPicture.asset(
                                                      'assets/svg/ic_apart.svg'),
                                                ),
                                              ),
                                              //const SizedBox(width: 4),
                                              Text(
                                                '${listFruits[index].count}',
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 18,
                                                      color: AppColor
                                                          .colorBottomNavigator)
                                              ),
                                              //const SizedBox(width: 4),
                                              SizedBox(
                                                height: 18,
                                                width: 18,
                                                child: ElevatedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    padding: const EdgeInsets.all(2),
                                                    shape: const CircleBorder(),
                                                    backgroundColor:
                                                        Colors.green,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      listFruits[index].count = listFruits[index].count + 1;
                                                    });
                                                  },
                                                  child: SvgPicture.asset(
                                                      'assets/svg/ic_plus_round.svg'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          width: 82,
                                          child: ElevatedButton(
                                            style:
                                            OutlinedButton.styleFrom(
                                              padding: const EdgeInsets.all(2),
                                              backgroundColor:
                                              listFruits[index].buttonColor,
                                            ),
                                            onPressed: () {
                                             setState(() {
                                               if(checkButton) {
                                                 listFruits[index].buttonColor = AppColor.colorGreen;
                                                 listFruits[index].textButton = 'Subscribe';
                                                 checkButton = false;
                                               }
                                               else{
                                                 listFruits[index].buttonColor = const Color.fromRGBO(143, 143, 143, 1);
                                                 listFruits[index].textButton = 'Subscribed';
                                                 checkButton = true;
                                               }
                                             });
                                            },
                                            child:  Text(
                                                listFruits[index].textButton,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 12,
                                                    color: AppColor
                                                        .backGroundWhite)
                                            )
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          width: 72,
                                          child: OutlinedButton(
                                            style:
                                            OutlinedButton.styleFrom(
                                                padding:
                                                const EdgeInsets.all(2),
                                                side:
                                                const BorderSide(
                                                    width: 1,
                                                    color: Colors
                                                        .green)),
                                            onPressed: () {
                                            },
                                            child: const Text(
                                              'Buy Once',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 12,
                                                    color: AppColor
                                                        .colorGreen)
                                            )
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ));
                    }),
              ),
            ]),
            const SizedBox(
              height: 50,
            )
          ],
        )));
  }
}
