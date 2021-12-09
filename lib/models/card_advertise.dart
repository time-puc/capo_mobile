import 'package:flutter/material.dart';

class CardAdvertise extends StatelessWidget {
  String modelo;
  String quilometragem;
  String preco;
  String localizacao;

  CardAdvertise(String this.modelo, String this.quilometragem,
      String this.preco, String this.localizacao);

  // Image.asset("assets/images/NotFound.jpge"),

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        color: Color.fromRGBO(220, 220, 220, 0.7),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 105,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  )),
              child: Image.asset("assets/images/NotFound.png"),
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
                      modelo,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    quilometragem + 'km',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                      child: Text(
                        'R\$: ' + preco,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.add_location,
                        size: 17,
                      ),
                      Text(localizacao)
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
