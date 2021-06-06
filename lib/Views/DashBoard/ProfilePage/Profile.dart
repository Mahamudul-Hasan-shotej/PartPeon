import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'PartsPeon',
      onLogin: (_) => Future.value(''),
      onRecoverPassword: (_) => Future.value(''),
      onSignup: (_) => Future.value(''),
      theme: LoginTheme(
        primaryColor: ColorConfig.themeColour,
        textFieldStyle: TextStyle(color: Colors.black),
        titleStyle: TextStyle(fontFamily: 'SecularOne'),
      ),
      onSubmitAnimationCompleted: () {},
    );
  }
}
