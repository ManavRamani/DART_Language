// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Opened Doors",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                left: BorderSide(width: 80,color: Colors.white70),
                right: BorderSide(width: 80,color: Colors.white70),
                top: BorderSide(width: 30,color: Colors.black),
                bottom: BorderSide(width: 30,color: Colors.black),

              ),
            ),
          ),
        ),
      ),
    ),
  );
}
