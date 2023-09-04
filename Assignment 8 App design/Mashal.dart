// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text(
            "Mashal",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\t\t\t\u{1F525}\n",
                    style: TextStyle(fontSize: 35),
                  ),
                  WidgetSpan(
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border(
                          top: BorderSide(
                              width: 18, color: Colors.deepOrangeAccent),
                          bottom: BorderSide(
                              width: 18, color: Colors.deepOrangeAccent),
                          left: BorderSide(width: 15, color: Colors.white),
                          right: BorderSide(width: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
