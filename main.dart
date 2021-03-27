import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget Kotak(Color warna) {
  return Container(
    decoration: BoxDecoration(color: warna),
    height: double.infinity,
    width: 100,
  );
}

Widget Kotak2(Color warna) {
  return Container(
    decoration: BoxDecoration(color: warna),
    height: 100,
    width: 100,
    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Container(
          color: Colors.teal,
          child: Row(
            children: <Widget>[
              Kotak(Colors.red),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Kotak2(Colors.yellow),
                  Kotak2(Colors.yellow[100]),
                ],
              ),
              Kotak(Colors.blue),
            ],
          ),
        )),
      ),
    );
  }
}
