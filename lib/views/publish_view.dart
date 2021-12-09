// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PublishPage extends StatefulWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: [
                DropdownButton(items: []),
                TextField(),
              ],
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('qualquer coisa'),
            ),
          ],
        ),
      ),

      /*ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            height: 50,
            color: Colors.amber[600],
            child: TextButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("TEXT BUTTON"),
            ),
          ),
        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
