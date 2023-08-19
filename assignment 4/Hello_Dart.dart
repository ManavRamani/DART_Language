import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 170, top: 300),
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                        decorationStyle: TextDecorationStyle.double,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 170, top: 100),
                    child: Text(
                      "Dart",
                      style: TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                        decorationStyle: TextDecorationStyle.double,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
