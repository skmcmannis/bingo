import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../models/database_manager.dart';

class Square extends StatefulWidget {
  const Square({Key key, this.squareIndex, this.background, this.text}) : super(key: key);

  final String text;
  final int squareIndex;
  final int background;

  @override
  _SquareState createState() => _SquareState(squareIndex, background);
}

class _SquareState extends State<Square> {

  int _squareIndex;
  int _background;
  Color _color = Colors.white;
  Color _text = Colors.black;

  _SquareState(int squareIndex, int background) {
    this._squareIndex = squareIndex;
    this._background = background;
    if(_background == 1) {
      _color = Colors.white;
      _text = Colors.black;
    } else {
      _color = Colors.black;
      _text = Colors.white;
    }
    insertSquareState();
  }

  void insertSquareState() async {
    DatabaseManager db = DatabaseManager.getInstance();
    await db.insertSquare(squareIndex: _squareIndex, state: _background);
  }

  void updateSquareState() async {
    DatabaseManager db = DatabaseManager.getInstance();
    await db.updateSquare(squareIndex: _squareIndex, state: _background);
  }

  void _flipSquare() {
    setState(() {
      _background = _background * -1;
      if(_background == 1) {
        _color = Colors.white;
        _text = Colors.black;
      } else {
        _color = Colors.black;
        _text = Colors.white;
      }
    });

    updateSquareState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {_flipSquare();},
        child: Container(
        alignment: Alignment.center,
        color: _color,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height / 10,
          maxHeight: MediaQuery.of(context).size.height / 10,
          minWidth: MediaQuery.of(context).size.width / 6,
          maxWidth: MediaQuery.of(context).size.width / 6
        ),
        child: AutoSizeText(widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _text
          ),
          wrapWords: false,
          textAlign: TextAlign.center,
          maxLines: 5,
          maxFontSize: 20,
          minFontSize: 8,
        ),
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.all(5),
        )
      )
    );
  }
}