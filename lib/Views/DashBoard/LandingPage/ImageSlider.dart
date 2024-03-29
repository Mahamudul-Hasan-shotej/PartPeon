import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:parts_peon/DataModel/sliderModel.dart';
import 'package:parts_peon/Repo/Dashboard/allSlider_Repo.dart';

class Allslider extends StatefulWidget {
  SliderModel sliderModel = SliderModel();
  Allslider allslider;

  @override
  _AllsliderState createState() => _AllsliderState();
}

class _AllsliderState extends State<Allslider> {
  AllSliderModel allSliderModel = AllSliderModel();

  @override
  void initState() async {
    var sliderModel = await allSliderModel.fetchAllSlider();
    print(sliderModel);
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 2.2 / 1,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(microseconds: 800),
        viewportFraction: 0.9,
      ),
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/Images/image1.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/Images/image2.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/Images/image3.jpg'),
                fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}
