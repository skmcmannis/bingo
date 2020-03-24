import 'package:flutter/material.dart';
import './screens/game_board.dart';

class Bingo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neighborhood Bingo',
      theme: ThemeData(
        dialogBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        primarySwatch: Colors.green,
      ),
      home: GameBoard(title: 'Neighborhood Bingo'),
    );
  }
}