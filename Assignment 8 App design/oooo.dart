// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "My App",
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff097018),
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment(0, 0),
              // color: Color(0xff67bd52),
              decoration: BoxDecoration(
                color: Color(0xff45af56),
                border: Border.all(color: Color(0xff447c51), width: 20),
              ),
              child: Text(
                "OOOO",
                style: TextStyle(
                  letterSpacing: -18,
                  fontSize: 85,
                  color: Color(0xff097018),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
