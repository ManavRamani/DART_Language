// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "B  O  L  T",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.yellow,
              ),
            ),
            Container(
              alignment: Alignment(0, 0),
              width: 100,
              height: double.infinity,
              color: Colors.black,
              child: Text("⚡",style: TextStyle(fontSize: 70),),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
