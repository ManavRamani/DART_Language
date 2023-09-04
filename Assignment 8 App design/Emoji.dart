// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Center(
                        child: Container(
                          margin:EdgeInsets.only(top: 250,bottom: 245),
                          height: 400,
                          width: 400,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 45,
                              color: Colors.orange,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: Alignment(0, -2.5),
                            child: Container(
                              height: 290,
                              width: 290,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  width: 35,
                                  color: Colors.orange,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: Alignment(-1, -0.5),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: Alignment(60, -0.5),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.bottom,
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              "Emoji",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
