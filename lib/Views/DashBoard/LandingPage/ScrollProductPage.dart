import 'package:flutter/material.dart';
import 'package:parts_peon/Views/DashBoard/LandingPage/ProductCard/ProductCardModel.dart';

class ScrollProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
          ),
          Expanded(
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new ProductCardModel();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
