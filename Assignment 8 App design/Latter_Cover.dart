import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Letter Cover",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Align(
          child: Center(
            child: Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border(
                  top: BorderSide(width: 95, color: Colors.greenAccent),
                  bottom: BorderSide(width: 95, color: Colors.greenAccent),
                  left: BorderSide(width: 105, color: Colors.green),
                  right: BorderSide(width: 105, color: Colors.green),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
