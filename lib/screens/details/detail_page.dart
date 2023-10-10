import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../base/app_colors.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  @override
  State<StatefulWidget> createState() => _DetailsPageState();
}
class _DetailsPageState extends State<DetailsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
              children: [
                Container(
                  height: 192,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30) , bottomLeft:  Radius.circular(30))
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 80,
                  width: 128,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/svg/ic_back_button_white.svg')),
                      const Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 88, top: 56),
                  child: Image.asset('assets/png/green_apple_details_page.png'),
                ),
              ]
          ),
        ),
      ),
    );
  }
}