// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff23A6A9),
          title: Text(
            "3D Cube",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xff23A6A9),
                border: Border(
                  top: BorderSide(width: 30, color: Color(0xff37DDE0)),
                  bottom: BorderSide(width: 30, color: Color(0xff37DDE0)),
                  left: BorderSide(width: 30, color: Color(0xff05C8CC)),
                  right: BorderSide(width: 30, color: Color(0xff05C8CC)),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
