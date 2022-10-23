// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Expanded expandedFunction(int noteNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            expandedFunction(1, Colors.red),
            expandedFunction(2, Colors.orange),
            expandedFunction(3, Colors.yellow),
            expandedFunction(4, Colors.green),
            expandedFunction(5, Colors.teal),
            expandedFunction(6, Colors.blue),
            expandedFunction(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}
