// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0073ff),
        title: Text(
          "Map",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu_outlined),
      ),
      body: Container(
        color: Color(0xffffffff),
        child: Column(
          children: IconList.map((e) {
            String Name = e["name"] as String;
            IconData? il = e["icon"];
            return ListIcon(
              name: Name,
              icon_name: e["icon"],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ListIcon extends StatelessWidget {
  String? name;
  IconData? icon_name;

  ListIcon({super.key, this.name, this.icon_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurStyle: BlurStyle.outer,spreadRadius: 1,blurRadius: 3),
          ],
        ),
        height: 90,
        width: double.infinity,
        // color: Color(0xffffffff),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "$name",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(icon_name ?? Icons.block),
            ),
          ],
        ),
      ),
    );
  }
}
