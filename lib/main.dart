import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.red,
      ),
      body: MyApp(),
    ),
  ),
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(child: FlatButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(5) + 1;
                });

              },
              child: Image.asset('images/ball$ballnumber.png'),
            ))
          ],
        ));
  }
}
