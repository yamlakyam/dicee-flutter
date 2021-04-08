import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    var random = new Random();
    var leftDice, rightDice;
    leftDice = random.nextInt(6);
    rightDice = random.nextInt(6);
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                  leftDice=5;

                  });
                },
                child: Image.asset('images/dice$leftDice.png'),
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                 rightDice=6;
                },
                child: Image.asset('images/dice$rightDice.png'),
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
