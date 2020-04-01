import 'package:flutter/material.dart';
import '../components/square.dart';
import '../components/text_styles.dart';

class GameBoard extends StatelessWidget {

  GameBoard({this.title});

  final String title;

  final List<String> entries = [
    'ANYONE ELSE HEAR THAT?',
    'STOLEN BICYCLE/ VEHICLE',
    'DANGER AT PARKS/LAKE/ PLAYGROUND',
    'LOST ANIMAL',
    'WHAT\'S THAT HELICOPTER DOING?',
    'ANYONE ELSE SMELL THAT?',
    'COMPLAINT ABOUT COMPLAINERS',
    'WHAT ARE THOSE POLICE DOING?',
    'FOUND ANIMAL',
    'WHAT IS THIS BUG?',
    'WHAT IS THIS PLANT?',
    'SHARED NEWS ARTICLE',
    'NEED RECOMMENDATION (FREE SPACE)',
    'COYOTE SIGHTING',
    'SAW SOMEONE SUSPICIOUS',
    'TRAFFIC COMPLAINT',
    'TRAFFIC WARNING',
    'HOUSE BREAK-IN',
    'POOP',
    'STOLEN PACKAGE',
    'SAW SOMEONE COMMIT A CRIME',
    'STORE CLOSED OR MOVED',
    'NEW RESTAURANT COMING SOON/OPEN!',
    'POWER/ INTERNET IS OUT',
    'QUESTION ABOUT SOMETHING I COULD HAVE EASILY GOOGLED'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(title),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('B',
                          style: Theme.of(context).textTheme.bingo
                        ),
                        Square(squareIndex: 0, text: entries[0]),
                        Square(squareIndex: 5, text: entries[5]),
                        Square(squareIndex: 10, text: entries[10]),
                        Square(squareIndex: 15, text: entries[15]),
                        Square(squareIndex: 20, text: entries[20]),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('I',
                          style: Theme.of(context).textTheme.bingo
                        ),
                        Square(squareIndex: 1, text: entries[1]),
                        Square(squareIndex: 6, text: entries[6]),
                        Square(squareIndex: 11, text: entries[11]),
                        Square(squareIndex: 16, text: entries[16]),
                        Square(squareIndex: 21, text: entries[21]),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('N',
                          style: Theme.of(context).textTheme.bingo
                        ),
                        Square(squareIndex: 2, text: entries[2]),
                        Square(squareIndex: 7, text: entries[7]),
                        Square(squareIndex: 12, text: entries[12]),
                        Square(squareIndex: 17, text: entries[17]),
                        Square(squareIndex: 22, text: entries[22]),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('G',
                          style: Theme.of(context).textTheme.bingo
                        ),
                        Square(squareIndex: 3, text: entries[3]),
                        Square(squareIndex: 8, text: entries[8]),
                        Square(squareIndex: 13, text: entries[13]),
                        Square(squareIndex: 18, text: entries[18]),
                        Square(squareIndex: 23, text: entries[23]),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('O',
                          style: Theme.of(context).textTheme.bingo
                        ),
                        Square(squareIndex: 4, text: entries[4]),
                        Square(squareIndex: 9, text: entries[9]),
                        Square(squareIndex: 14, text: entries[14]),
                        Square(squareIndex: 19, text: entries[19]),
                        Square(squareIndex: 24, text: entries[24]),
                      ],
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}