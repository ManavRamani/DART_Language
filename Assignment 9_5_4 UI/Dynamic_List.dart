// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last, non_constant_identifier_names
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Num_List(),
    );
  }
}

class Num_List extends StatefulWidget {
  const Num_List({super.key});

  @override
  State<Num_List> createState() => _Num_ListState();
}

class _Num_ListState extends State<Num_List> {
  List<int> numberList = [1];

  void addNumber() {
    setState(() {
      int lastNumber = numberList.last;
      numberList.add(lastNumber + 1);
    });
  }

  void removeLastNumber() {
    setState(() {
      if (numberList.length > 1) {
        numberList.removeLast();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Dynamic List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          int number = index + 1;
          Color color = number % 2 == 0 ? Colors.indigoAccent : Colors.lightBlueAccent;
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                height: 100,
                width: double.infinity,
                child: Text(
                  "${numberList[index]}",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: addNumber,
            tooltip: 'Add',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: removeLastNumber,
            tooltip: 'Remove',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
