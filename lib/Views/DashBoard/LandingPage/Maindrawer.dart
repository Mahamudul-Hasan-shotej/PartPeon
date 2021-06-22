import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:parts_peon/DataModel/AllCatagoryModel.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';
import 'package:parts_peon/Repo/Dashboard/allCatagory_Repo.dart';

class Maindrawer extends StatelessWidget {
  AllCatagoryModel allCatagory = AllCatagoryModel();
  AllCatagoryRepo allCatagoryRepo = AllCatagoryRepo();

  @override
  Widget build(BuildContext context) {
    return MultiLevelDrawer(
      header: Container(
        width: double.infinity,
        height: 220,
        color: ColorConfig.themeColour,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/Images/profilePic.jpg'),
              radius: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Shotej Hasan',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'SecularOne',
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      divisionColor: ColorConfig.themeColour,
      children: [
        MLMenuItem(
            content: Text(
              'Spare Parts',
              style: TextStyle(fontFamily: 'SecularOne'),
            ),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_right),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(
                  submenuContent: Center(
                    child: Text(
                      'Option 1',
                      style: TextStyle(fontFamily: 'SecularOne'),
                    ),
                  ),
                  onClick: () {
                    Navigator.pop(context);
                  })
            ]),
        MLMenuItem(
            content: Text(
              'Notification',
              style: TextStyle(fontFamily: 'SecularOne'),
            ),
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.arrow_right),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(
                  submenuContent: Center(
                    child: Text('Option 1',
                        style: TextStyle(fontFamily: 'SecularOne')),
                  ),
                  onClick: () {}),
              MLSubmenu(
                  submenuContent: Center(
                    child: Text('Option 2',
                        style: TextStyle(fontFamily: 'SecularOne')),
                  ),
                  onClick: () {}),
              MLSubmenu(
                  submenuContent: Center(
                    child: Text('Option 3',
                        style: TextStyle(fontFamily: 'SecularOne')),
                  ),
                  onClick: () {}),
            ]),
        MLMenuItem(
          content: Text(
            'Exit',
            style: TextStyle(fontFamily: 'SecularOne'),
          ),
          leading: Icon(Icons.exit_to_app),
          onClick: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
