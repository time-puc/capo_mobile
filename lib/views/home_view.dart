// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:capo_mobile/models/card_advertise.dart';
import 'package:capo_mobile/models/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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

  List dados = [];

  Future<List> requsicaoBanco(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      dados = jsonDecode(response.body);
      return dados;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Image.asset("assets/images/Logo.png"),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // Title - Marcas
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 10, color: Color.fromARGB(0, 0, 0, 0)),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              alignment: Alignment.centerLeft,
              height: 60,
              child: Text(
                "Marcas",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Slider
            Container(
              child: CarousellSlider([
                Image.asset("assets/brands/Chevrolet.png"),
                Image.asset("assets/brands/Fiat.png"),
                Image.asset("assets/brands/Ford.png"),
                Image.asset("assets/brands/Volkswagen.png"),
                Image.asset("assets/brands/Rolls-Royce.png"),
              ], MediaQuery.of(context).size.width * 0.80, 150, 20, 100, 230,
                  230, 230),
            ),
            // Title - Anúncios recentes
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 10, color: Color.fromARGB(0, 0, 0, 0)),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              alignment: Alignment.centerLeft,
              height: 60,
              child: Text(
                "Anúncios recentes",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
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
