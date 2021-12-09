import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousellSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          child: Image.asset('assets/brands/Chevrolet.png'),
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            color: Color.fromARGB(100, 230, 230, 230),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
        Container(
          child: Image.asset('assets/brands/Fiat.png'),
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            color: Color.fromARGB(100, 230, 230, 230),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
        Container(
          child: Image.asset('assets/brands/Ford.png'),
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            color: Color.fromARGB(100, 230, 230, 230),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
        Container(
          child: Image.asset('assets/brands/Volkswagen.png'),
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            color: Color.fromARGB(100, 230, 230, 230),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        autoPlay: true,
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