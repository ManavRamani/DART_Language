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
            "SPLLITTER",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10,)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "7",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "9",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 80,
                        width: 450,
                        child: Container(
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              "10",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10,)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "7",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "9",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 10,)),
                        height: 425,
                        width: 80,
                        child: Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "10",
                              style: TextStyle(color: Colors.black,fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
