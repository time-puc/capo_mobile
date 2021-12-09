// ignore_for_file: prefer_const_constructors

import 'package:capo_mobile/views/home_view.dart';
import 'package:capo_mobile/views/publish_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/': (context) => PublishPage()
      },
    );
  }
}
