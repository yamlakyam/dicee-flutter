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
  //var random = new Random(6);
  //var leftDice = random.nextInt(6) + 1;
  var leftD =1 ;
  var rightD=2;
  @override
  Widget build(BuildContext context) {

    //var leftDice, rightDice;

    //rightDice = random.nextInt(6) + 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    var random= new Random();
                    leftD=random.nextInt(6)+1;
                    //leftDice=5;
                   // leftDice = random.nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftD.png'),
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
                  setState(() {
                    var random= new Random();
                    rightD=random.nextInt(6)+1;
                  });

                  //rightDice=6;
                },
                child: Image.asset('images/dice$rightD.png'),
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
