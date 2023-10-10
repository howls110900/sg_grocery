import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/base/app_images.dart';
import 'package:sg_grocery/base/app_string.dart';
import 'package:sg_grocery/screens/home/home_page.dart';
import '../../base/app_colors.dart';
import '../account/account_page.dart';
import '../cart/cart_page.dart';
import '../explore/explore_page.dart';
import '../fav/fav_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List<Widget> widgetOption = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const FavPage(),
    const AccountPage()
  ];
  int selectedPage = 0;
  //bool isDrawer = false;
  @override
  Widget build(BuildContext context) {
    //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: widgetOption.elementAt(selectedPage),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          backgroundColor: AppColor.color_85_171_96_1,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              //isDrawer = false;
              selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[0], indexItem: 0 ),
                label: AppString.textHome),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[1], indexItem: 1),
                label: AppString.textExplore),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[2], indexItem: 2),
                label: AppString.textCart),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[3],indexItem: 3),
                label: AppString.textFAV),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[4], indexItem: 4),
                label: AppString.textAccount),
          ],
        ),
      ),
    ));
  }
  Widget _iconBottomNav({required int checkIndex, required String icon,required int indexItem}) {
    //checkItem = 0 ;
    if (checkIndex == indexItem) {
      return Container(
          padding: const EdgeInsets.all(6),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white
          ),
          child: SvgPicture.asset(icon,
            color: AppColor.color_85_171_96_1,
          ));
    } else {
      return SvgPicture.asset(icon);
    }
  }
}
List<String> listIconBottomNav =[
  AppImage.icHome,
  AppImage.icExplore,
  AppImage.icCart,
  AppImage.icFAV,
  AppImage.icAccount
];

