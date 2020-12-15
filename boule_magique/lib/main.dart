import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyan[100],
          appBar: AppBar(
            title: Text('Boules magiques'),
            backgroundColor: Colors.white60,
          ),
          body: JeuDeBoules()
      ),
    ),
  );
}

class JeuDeBoules extends StatefulWidget {
  @override
  _JeuDeBoules createState() => _JeuDeBoules();
}

class _JeuDeBoules extends State<JeuDeBoules> {
  @override
  int NombreBoule = 1;
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed:() {
                  setState(() {
                  NombreBoule = Random().nextInt(5) +1;
                  print('OK');
                  });
                  },
                child: Image.asset('images/ball$NombreBoule.png'),
              ),
            ),
          ],
        )
    );
  }
}