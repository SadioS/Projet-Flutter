import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Jeu de dés'),
            backgroundColor: Colors.red,
          ),
          body: JeuDeDes()
        ),
      ),
  );
}

class JeuDeDes extends StatefulWidget {
  @override
  _JeuDeDes createState() => _JeuDeDes();
}

class _JeuDeDes extends State<JeuDeDes> {
  @override
  int faceDeGauche = 1;
  int faceDeDroite = 1;

  void Face() {
    faceDeGauche = Random().nextInt(6);
    faceDeDroite = Random().nextInt(6);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Face();
                  print('Bouton gauche appuyé');
                });
              },
              child: Image.asset("images/dice$faceDeGauche.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Face();
                  print('Bouton droit appuyé');
                });
              },
              child: Image.asset("images/dice$faceDeDroite.png"),
            ),
          ),
        ],
      ),
    );
  }
}