import 'package:flutter/material.dart';

void main() {
  String rnw = "Red & White";
  String m = "Multimedia Education";
  String ss = "Shaping \"skills\" for \"scalling\" higher...!!!";
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "My RNW",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 300,
          ),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "$rnw",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 90,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "$m",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "$ss",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
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
