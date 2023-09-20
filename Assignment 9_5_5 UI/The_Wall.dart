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
          title: Text("THE WALL",style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              MyWall(),
              MyWall(),
              MyWall(),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 9),
                      child: Container(
                        color: Colors.brown,
                        height: 110,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9, left: 7, right: 7),
                      child: Container(
                        color: Colors.brown,
                        height: 110,
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9),
                      child: Container(
                        color: Colors.brown,
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWall extends StatelessWidget {
  const MyWall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9, left: 7, right: 7),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 110,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 145,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9, left: 7, right: 7),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 120,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9),
                  child: Container(
                    color: Colors.brown,
                    height: 110,
                    width: 145,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
