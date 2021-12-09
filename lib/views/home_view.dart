// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:capo_mobile/models/card_advertise.dart';
import 'package:capo_mobile/models/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardAdvertise> lista_anuncios = [
    CardAdvertise('modelo1', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo2', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo3', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo4', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo5', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo6', 'quilometragem', 'preco', 'localizacao'),
    CardAdvertise('modelo7', 'quilometragem', 'preco', 'localizacao'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Image.asset("assets/images/Logo.png"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: CarousellSlider(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: lista_anuncios.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return lista_anuncios[index];
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.publish),
            title: Text("Publicar"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Conta"),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
