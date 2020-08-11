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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  Random random = new Random();
                  int randomNum = random.nextInt(6) + 1;
                },
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print('oh i am dank');
                },
                child: Image.asset('images/dice6.png')),
          ),
        ],
      ),
    );
  }
}
