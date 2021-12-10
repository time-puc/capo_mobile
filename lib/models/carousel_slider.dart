// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousellSlider extends StatelessWidget {
  List<Widget> images = [];
  double width = 0, height = 0, border = 0;
  int a = 0, r = 0, g = 0, b = 0;

  CarousellSlider(
      List<Widget> this.images,
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
          .map((e) => Stack(
                children: [
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(a, r, g, b),
                      border: Border.all(
                          width: border, color: Color.fromARGB(0, 0, 0, 0)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: e,
                  ),
                  Container(
                    width: width,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(25, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ))
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
