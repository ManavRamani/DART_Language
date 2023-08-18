import 'package:flutter/material.dart';

void main() {
  String s = "Manav";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("frist App"),
        ),
        body: Center(
          child: Text(
            "Welcome To $s",
            style: TextStyle(
              fontSize: 50,
              // decoration: TextDecoration.overline,
              decoration: TextDecoration.underline,
              // decoration: TextDecoration.lineThrough,
              decorationColor: Colors.cyan,
              decorationStyle: TextDecorationStyle.dotted,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(182, 204, 139, 0.9),
              // color: Color(0x54579ed9),
              // color: Colors.deepOrange,
              // backgroundColor: Colors.cyan,
            ),
          ),
        ),
      ),
    ),
  );
}
