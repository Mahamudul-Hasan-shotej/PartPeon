import 'package:flutter/material.dart';

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
              height: 100,
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
                  Text(
                    '5800 tk',
                    style: TextStyle(
                        fontFamily: 'SecularOne', color: Color(0xffE2A453)),
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
