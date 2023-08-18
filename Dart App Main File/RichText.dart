import 'package:flutter/material.dart';

void main() {
  String ln = "Flutter";
  String ln1 = "C";
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text("Chintu"),
          centerTitle: true,
          leading: Center(child: Center(child: Center(child: Text("Back")))),
          actions: [
            Center(child: Text("logout")),
            Center(child: Text(" More")),
          ],
        ),
        body: Column(
          children: [
            Text(
              "Welcome to Flutter",
              style: TextStyle(color: Colors.red),
            ),
            Text.rich(
              TextSpan(
                text: "Welcome to ",
                style: TextStyle(color: Colors.blue),
                children: [
                  TextSpan(
                    text: "$ln",
                  ),
                  TextSpan(
                    text: " and ",
                  ),
                  TextSpan(text: "$ln1", style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
            RichText(
                text: TextSpan(text: "Hello ", children: [
              TextSpan(text: "All", style: TextStyle(color: Colors.yellow))
            ]))
          ],
        ),
      ),
    ),
  );
}
