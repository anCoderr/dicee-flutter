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
  int leftDiceNum = 4;
  int rightDiceNum = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomIntGenerator();
                  });
                },
                child: Image.asset('images/dice$leftDiceNum.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomIntGenerator();
                  });
                },
                child: Image.asset('images/dice$rightDiceNum.png')),
          ),
        ],
      ),
    );
  }

  void randomIntGenerator() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }
}
