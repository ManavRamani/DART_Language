// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            "A Shadow Button",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Center(
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(10, 10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlue,
                        blurRadius: 10,
                        blurStyle: BlurStyle.outer),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Tap",
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900,),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
