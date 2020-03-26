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
                        Square(text: entries[0]),
                        Square(text: entries[5]),
                        Square(text: entries[10]),
                        Square(text: entries[15]),
                        Square(text: entries[20]),
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
                        Square(text: entries[1]),
                        Square(text: entries[6]),
                        Square(text: entries[11]),
                        Square(text: entries[16]),
                        Square(text: entries[21]),
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
                        Square(text: entries[2]),
                        Square(text: entries[7]),
                        Square(text: entries[12]),
                        Square(text: entries[17]),
                        Square(text: entries[22]),
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
                        Square(text: entries[3]),
                        Square(text: entries[8]),
                        Square(text: entries[13]),
                        Square(text: entries[18]),
                        Square(text: entries[23]),
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
                        Square(text: entries[4]),
                        Square(text: entries[9]),
                        Square(text: entries[14]),
                        Square(text: entries[19]),
                        Square(text: entries[24]),
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