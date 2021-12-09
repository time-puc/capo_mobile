import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Slider',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Carousel Slider Example'),
        ),
        body: CarouselSlider(
          items: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Android'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('iOS'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Desktop'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Web'),
            )
          ],

          //Slider Container properties
          options: CarouselOptions(
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
