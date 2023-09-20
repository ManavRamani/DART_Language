// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
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
  Color? color = Colors.blue;
  IconData? icon = Icons.keyboard_arrow_left;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons Editor",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          MainContainer(
            color1: color,
            icon1: icon,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Select Color",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: colors.map((element) {
                  return InkWell(
                    onTap: () {
                      color = element;
                      setState(() {});
                    },
                    child: ColorBox(color: element),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Select Icon",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(2, 2))
              ],
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: icons.map((element) {
                  return InkWell(
                    onTap: () {
                      icon = element;
                      setState(() {});
                    },
                    child: IconBox(icon: element,color2: color),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorBox extends StatefulWidget {
  Color? color;

  ColorBox({super.key, this.color});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 0))
        ],
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

List<Color> colors = [
  Colors.yellow,
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.grey,
  Colors.cyan,
  Colors.teal,
  Colors.pink
];

class IconBox extends StatefulWidget {
  IconData? icon;
  Color? color2;

  IconBox({super.key, this.icon,this.color2});

  @override
  State<IconBox> createState() => _IconBoxState();
}

class _IconBoxState extends State<IconBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 0))
          ]),
      child: Icon(
        widget.icon,
        color: widget.color2,
        size: 30,
      ),
    );
  }
}

List<IconData> icons = [
  Icons.album,
  Icons.alarm,
  Icons.add,
  Icons.keyboard_arrow_left,
  Icons.keyboard_arrow_right,
  Icons.call,
  Icons.search,
  Icons.account_circle
];

class MainContainer extends StatefulWidget {
  Color? color1;
  IconData? icon1;

  MainContainer({super.key, this.color1, this.icon1});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(2, 2))
        ],
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        widget.icon1,
        color: widget.color1,
        size: 70,
      ),
    );
  }
}
