// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Mission of RNW",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Center(
            child: Container(
              height: 150,
              width: 350,
              alignment: Alignment.center,
              decoration:   BoxDecoration(
                color: Color(0xffeeaed7),
                border: Border(
                  left: BorderSide(
                    width: 10,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              child: RichText(
                text: TextSpan(
                  text: "Shaping \"skills\" for \"scalling\" higher\n",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),
                  children: [
                    TextSpan(
                      text: "- RNW",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
