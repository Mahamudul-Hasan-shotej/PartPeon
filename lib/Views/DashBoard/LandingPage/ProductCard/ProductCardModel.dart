import 'package:flutter/material.dart';
import 'package:parts_peon/Model/Metarial/ColorConfig.dart';

class ProductCardModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 113,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 90,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/Images/spareParts.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'SparePart',
                    style: TextStyle(fontFamily: 'SecularOne'),
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: '6000 tk\n',
                          style: new TextStyle(
                            color: Colors.grey,
                            decorationColor: Colors.black,
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                        new TextSpan(
                            text: '5800 tk',
                            style: new TextStyle(
                              color: ColorConfig.priceColor,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
