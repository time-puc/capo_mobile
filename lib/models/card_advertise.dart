import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CardAdvertise extends StatelessWidget {
  String model;
  String condition;
  String price;
  String location;

  CardAdvertise(String this.model, String this.condition, String this.price,
      String this.location);

  // Image.asset("assets/images/NotFound.jpge"),

  Future<List<CardAdvertise>> requsicaoBanco(String url) async {
    List data = [];
    List<CardAdvertise> advertises = [];

    try {
      final response = await http.get(Uri.parse(url));
      data = jsonDecode(response.body);
      data.forEach((element) {
        advertises.add(CardAdvertise(element['modelo'], element['condicao'],
            element['preco'], element['estado']));
      });
      return advertises;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Color.fromRGBO(220, 220, 220, 0.7),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 105,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1.0, color: Color.fromARGB(0, 0, 0, 0)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  )),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset("assets/images/NotFound.png"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, top: 7.0, right: 0, bottom: 5),
                    child: Text(
                      model,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    condition,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                      child: Text(
                        'R\$: ' + price + ',00',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.add_location,
                        color: Colors.blue,
                        size: 17,
                      ),
                      Text(location)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
