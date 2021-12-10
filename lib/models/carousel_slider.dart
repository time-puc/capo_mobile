import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousellSlider extends StatelessWidget {
  List<String> images = [];
  double width = 0, height = 0, border = 0;
  int a = 0, r = 0, g = 0, b = 0;

  CarousellSlider(
      List<String> this.images,
      double this.width,
      double this.height,
      double this.border,
      int this.a,
      int this.r,
      int this.g,
      int this.b);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images
          .map(
            (e) => Container(
              width: width,
              decoration: BoxDecoration(
                color: Color.fromARGB(a, r, g, b),
                border: Border.all(
                    width: border, color: Color.fromARGB(0, 0, 0, 0)),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Image.asset(e),
            ),
          )
          .toList(),

      //Slider Container properties
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        height: height,
      ),
    );
  }
}


/*
      height: 400,  
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
*/