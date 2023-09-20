import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4B698D),
        title: Text(
          "Calc",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu_outlined),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Container(
                child: Text(
                  "$count",
                  style: TextStyle(fontSize: 70, color: Colors.grey),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70,
                      top: 40,
                      right: 20,
                      bottom: 10,
                    ),
                    child: InkWell(onTap: () {
                      count=count-2;
                      setState(() {
                      });
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff4B698D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 50,
                          right: 50,
                          bottom: 10,
                        ),
                        child: Text(
                          "-2",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 40, right: 10, bottom: 10),
                    child: InkWell(onTap: () {
                      count=count+2;
                      setState(() {
                      });
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff4B698D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.only(
                            top: 10, left: 50, right: 50, bottom: 10),
                        child: Text(
                          "+2",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 70, top: 40, right: 20, bottom: 10),
                    child: InkWell(onTap: () {
                      count=count-4;
                      setState(() {
                      });
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff4B698D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.only(
                            top: 10, left: 50, right: 50, bottom: 10),
                        child: Text(
                          "-4",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, top: 40, right: 10, bottom: 10),
                    child: InkWell(onTap: () {
                      count=count+4;
                      setState(() {
                      });
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff4B698D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.only(
                            top: 10, left: 50, right: 50, bottom: 10),
                        child: Text(
                          "+4",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(onTap: () {
                count=0;
                setState(() {
                });
              },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4B698D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  padding:
                      EdgeInsets.only(top: 10, left: 50, right: 50, bottom: 10),
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
