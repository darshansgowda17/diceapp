import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6)+1;
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Ink.image(
                  width: 300,
                  height: 300,
                  image: AssetImage("images/dice$leftDiceNumber.png"),
                )),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6)+1;
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Ink.image(
                  width: 300,
                  height: 300,
                  image: AssetImage("images/dice$rightDiceNumber.png"),
                )),
          ),
          ),
        ],
      ),);

  }
}


