import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  void randomize() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("Dicee App")),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomize();
                },
                child: Image(
                  image: AssetImage('images/dice-$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomize();
                },
                child: Image(
                  image: AssetImage('images/dice-$rightDiceNumber.png'),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
