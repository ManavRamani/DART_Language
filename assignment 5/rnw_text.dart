import 'package:flutter/material.dart';

void main() {
  String ln =
      "Red & White Group of Institutes \n One Step in Changing Education Chain...";
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Flutter App",
          ),
          centerTitle: true,
          leading: Center(
            child: Icon(Icons.menu),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 350,
          ),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "\t\t\t\t\t$ln",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
