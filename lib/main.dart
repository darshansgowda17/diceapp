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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  print("Left Pressed");
                },
                child: Ink.image(
                  width: 300,
                  height: 300,
                  image: const AssetImage("images/dice2.png"),
                )),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  print("Right Pressed");
                },
                child: Ink.image(
                  width: 300,
                  height: 300,
                  image: const AssetImage("images/dice2.png"),
              )),
            ),
          ),
            ],
          ),);

  }
}
