import 'package:flutter/material.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';
import 'package:parts_peon/Views/DashBoard/LandingPage/Maindrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConfig.lightbagColour,
        appBar: AppBar(
          toolbarHeight: 60,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            child: TextField(
              autofocus: false,
              onChanged: (value) {},
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  fillColor: ColorConfig.lightbagColour,
                  hintText: "What Do You Like to Buy",
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        drawer: Maindrawer(),
        body: Container(
          height: 400,
        ));
  }
}
