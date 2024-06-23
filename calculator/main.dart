import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  Widget buildButton(String buttonText, Color buttonColor, {double? widthFactor = 1}) {
    return Expanded(
      flex: (widthFactor! * 10).toInt(),
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            backgroundColor: buttonColor,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: buttonColor == Colors.grey ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                alignment: Alignment.bottomRight,
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 80.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildButton('C', Colors.grey),
                    buildButton('+/-', Colors.grey),
                    buildButton('%', Colors.grey),
                    buildButton('÷', Colors.orange),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('7', Colors.grey.shade800),
                    buildButton('8', Colors.grey.shade800),
                    buildButton('9', Colors.grey.shade800),
                    buildButton('×', Colors.orange),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('4', Colors.grey.shade800),
                    buildButton('5', Colors.grey.shade800),
                    buildButton('6', Colors.grey.shade800),
                    buildButton('-', Colors.orange),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('1', Colors.grey.shade800),
                    buildButton('2', Colors.grey.shade800),
                    buildButton('3', Colors.grey.shade800),
                    buildButton('+', Colors.orange),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('0', Colors.grey.shade800, widthFactor: 2),
                    buildButton('.', Colors.grey.shade800),
                    buildButton('=', Colors.orange),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}