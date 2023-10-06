import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery/screens/home/home_page.dart';
import '../../base/app_colors/app_colors.dart';
import '../account/account_page.dart';
import '../cart/cart_page.dart';
import '../explore/explore_page.dart';
import '../fav/fav_page.dart';
//import 'package:sg_grocery/screens/splash/splash.dart';

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
          backgroundColor: AppColor.colorBottomNavigator,
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
                label: "Home"),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[1], indexItem: 1),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[2], indexItem: 2),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[3],indexItem: 3),
                label: "FAV"),
            BottomNavigationBarItem(
                icon: _iconBottomNav(checkIndex: selectedPage, icon: listIconBottomNav[4], indexItem: 4),
                label: "Account"),
          ],
        ),
      ),
    ));
  }
  Widget _iconBottomNav({required int checkIndex, required String icon,required int indexItem}) {
    //checkItem = 0 ;
    if (checkIndex == indexItem) {
      return Container(
          padding: EdgeInsets.all(6),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white
          ),
          child: SvgPicture.asset(icon,
            color: AppColor.colorBottomNavigator,
          ));
    } else {
      return SvgPicture.asset(icon);
    }
  }
}
List<String> listIconBottomNav =[
  "assets/svg/ic_home.svg",
  "assets/svg/ic_explore.svg",
  "assets/svg/ic_cart.svg",
  "assets/svg/ic_fav.svg",
  "assets/svg/ic_account.svg",
];

