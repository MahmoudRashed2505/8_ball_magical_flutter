import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '8 Ball Magical Answer',
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var imgNumber = 1;
  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "8 Ball Magical Answer",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$imgNumber.png'),
                onPressed: () {
                  setState(() {
                    imgNumber = rng.nextInt(5)+1;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
