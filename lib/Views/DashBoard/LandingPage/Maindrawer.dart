import 'package:flutter/material.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';

class Maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: ColorConfig.themeColour,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                size: 120,
                color: Colors.white54,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'MD.Mahamudul Hasan',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        )
      ],
    ));
  }
}
