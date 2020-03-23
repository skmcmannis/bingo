import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  Square({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _SquareState createState() => _SquareState();
}

class _SquareState extends State<Square> {

  int _background = 1;

  void _flipSquare() {
    setState(() {
      _background = _background * -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Text('Sample')
      )
    );
  }
}