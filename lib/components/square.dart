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
        color: Theme.of(context).dialogBackgroundColor,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.width / 6
        ),
        child:
          Text('A big chunk of text'),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
      )
    );
  }
}