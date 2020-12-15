import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profil2.jpeg')
              ),
              Text(
                'Sadayo',
                style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              Text(
                'Future Kaizoku!',
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontFamily: 'Roboto',
                fontSize: 15.0,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                ),),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.blueGrey.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 20.0,
                      color: Colors.blueGrey.shade900,
                    ),
                    title: Text(
                      '+33 (0)6 69 40 47 44',
                      style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 20.0,
                      color: Colors.blueGrey.shade900,
                    ),
                    title: Text(
                      'wanokuni@kaizoku.op',
                      style: TextStyle(
                        color: Colors.blueGrey.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}