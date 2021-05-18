import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';

class Maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiLevelDrawer(
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
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ),
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
      ),
    );
  }
}

// Size size = MediaQuery.of(context).size;

//     return MultiLevelDrawer(
//       rippleColor: Colors.white,
//       subMenuBackgroundColor: Colors.grey.shade100,
//       divisionColor: Colors.grey,
//       header: Container(
//         color: ColorConfig.themeColour,
//         height: size.height * 0.25,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Image.asset(
//               //   // "assets/dp_default.png",
//               //   width: 100,
//               //   height: 100,
//               // ),

//               Icon(
//                 Icons.account_circle,
//                 size: 120,
//                 color: Colors.white54,
//               ),

//               SizedBox(
//                 height: 10,
//               ),
//               Text("MD.Mahamudul Hasan")
//             ],
//           ),
//         ),
//       ),
//       children: [
//         MLMenuItem(
//             leading: Icon(Icons.settings),
//             trailing: Icon(Icons.arrow_right),
//             content: Text("Car"),
//             onClick: () {},
//             subMenuItems: [
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
//             ]),
//         MLMenuItem(
//             leading: Icon(Icons.payment),
//             trailing: Icon(Icons.arrow_right),
//             content: Text(
//               "Bike",
//             ),
//             subMenuItems: [
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//               MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//             ],
//             onClick: () {}),
//       ],
//     );
//   }
