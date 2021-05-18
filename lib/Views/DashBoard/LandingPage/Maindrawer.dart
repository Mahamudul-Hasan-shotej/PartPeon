import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';

class Maindrawer extends StatelessWidget {
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
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      divisionColor: ColorConfig.themeColour,
      children: [
        MLMenuItem(
            content: Text('Person'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_right),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(
                  submenuContent: Text('Option 1'),
                  onClick: () {
                    Navigator.pop(context);
                  })
            ]),
        MLMenuItem(
            content: Text('Notification'),
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.arrow_right),
            onClick: () {},
            subMenuItems: [
              MLSubmenu(submenuContent: Text('Option 1'), onClick: () {}),
              MLSubmenu(submenuContent: Text('Option 2'), onClick: () {}),
              MLSubmenu(submenuContent: Text('Option 3'), onClick: () {}),
            ]),
        MLMenuItem(
          content: Text('Exit'),
          leading: Icon(Icons.exit_to_app),
          onClick: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
