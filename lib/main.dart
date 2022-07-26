import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int num = 1;
  var n = Random();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 239, 189),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    num = n.nextInt(6) + 1;
                  });

                  // print('Dice pe generate hua hai ${num}');
                },
                child: Container(
                  child: Image.asset(
                    'images/${num}.png',
                    height: 300,
                    width: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Tap on dice'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'You got :${num}'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 245, 30, 102),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
