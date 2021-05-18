import 'package:flutter/material.dart';
import 'package:parts_peon/Views/DashBoard/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PartsPeon',
      theme: ThemeData(canvasColor: Colors.white),
      home: Scaffold(body: DashBoard()),
    );
  }
}
