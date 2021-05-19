import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';
import 'package:parts_peon/Model/Metarial/Global.dart' as globals;
import 'package:parts_peon/Views/DashBoard/LandingPage/Home.dart';
import 'package:parts_peon/Views/ProfilePage/Profile.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final textList = ['Home', 'Wishlist', 'Cart', 'Profile'];
  final iconList = <IconData>[
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          globals.bottomNavIndex == 3 ? ColorConfig.themeColour : Colors.white,
      body: globals.bottomNavIndex == 0
          ? Home()
          : globals.bottomNavIndex == 3
              ? Profile()
              : Container(
                  color: Colors.transparent,
                ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          elevation: 3,
          backgroundColor: globals.bottomNavIndex == 3
              ? Colors.white
              : ColorConfig.themeColour,
          child: Icon(
            Icons.shopping_bag,
            color:
                globals.bottomNavIndex == 3 ? Color(0xffbdbdbd) : Colors.white,
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
                  Text(
                    textList[index],
                    style: TextStyle(
                        fontFamily: 'SecularOne', fontSize: 12, color: color),
                  )
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
