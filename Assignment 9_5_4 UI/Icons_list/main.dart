// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'icon_list.dart';

void main() {
  runApp(MyApp());
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
          backgroundColor: Colors.white,
          title: Text(
            "Icons",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: Icons_data.map((e) {
            List<Map> IList = e["Icons_list"];
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: IList.map((ic_name) {
                  IconData? Icon_name = ic_name['Icon'];
                  return Icon_Design(
                    Icon_name: Icon_name,
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Icon_Design extends StatelessWidget {
  IconData? Icon_name;

  Icon_Design({super.key, this.Icon_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Icon(Icon_name ?? Icons.add,size: 35,color: Colors.grey,),
      ),
    );
  }
}
