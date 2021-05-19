import 'package:flutter/material.dart';

class ScrollProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Engine Collections',
            style: TextStyle(
              fontFamily: 'SecularOne',
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
