import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';
import 'package:parts_peon/Model/Metarial/Global.dart' as globals;
import 'package:parts_peon/Views/DashBoard/LandingPage/Home.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final textList = ['Smart Lock', 'Camera', 'Location'];
  final iconList = <IconData>[
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.lightbagColour,
      body: globals.bottomNavIndex == 0
          ? Home()
          : Container(
              color: Colors.transparent,
            ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          elevation: 3,
          backgroundColor: ColorConfig.themeColour,
          child: Icon(
            Icons.shopping_bag,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          height: 60,
          tabBuilder: (int index, bool isActive) {
            final color =
                isActive ? ColorConfig.themeColour : Color(0xffbdbdbd);
            return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 28,
                    color: color,
                  ),
                ]);
          },
          backgroundColor: Colors.white,
          activeIndex: globals.bottomNavIndex,
          gapLocation: GapLocation.end,
          notchSmoothness: NotchSmoothness.defaultEdge,
          leftCornerRadius: 20,
          onTap: (index) {
            setState(() {
              globals.bottomNavIndex = index;
            });
          }),
    );
  }
}
