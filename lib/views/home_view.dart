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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Image.asset("assets/images/Logo.png"),
        ),
      ),
      //Body
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                // Title - Marcas
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 10, color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    "Principais Marcas",
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
                  ], MediaQuery.of(context).size.width * 0.80, 150, 20, 100,
                      230, 230, 230),
                ),
                // Title - Anúncios recentes
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 10, color: Color.fromARGB(0, 0, 0, 0)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    "Anúncios recentes",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //List of advertises
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder(
                      future: CardAdvertise("a", "b", "c", "d")
                          .loadData('http://192.168.3.7:3000/anuncio/busca/5'),
                      builder: (context,
                          AsyncSnapshot<List<CardAdvertise>> snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Column(
                            children: snapshot.data!
                                .map((e) => Card(child: e))
                                .toList(),
                          );
                        } else
                          return ErrorWidget('Não foi possível carregar os anúncios');
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
      //NavBar
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
