import 'package:flutter/material.dart';
import '../components/square.dart';
import '../components/text_styles.dart';
import '../models/database_manager.dart';


class GameBoard extends StatefulWidget {

  GameBoard({Key key, this.title, this.squareStates}) : super(key: key);

  final String title;
  List<Square> squareStates;

  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {

  void initState() {
    _loadState();
    super.initState();
  }

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
    return Builder(
      builder: (BuildContext context) {
        if(widget.squareStates != null) {
          return Scaffold(
              backgroundColor: Theme.of(context).backgroundColor,
              appBar: AppBar(
                title: Center(
                  child: Text(widget.title),
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
                                Square(background: widget.squareStates[0].background, squareIndex: 0, text: entries[0]),
                                Square(background: widget.squareStates[1].background, squareIndex: 5, text: entries[5]),
                                Square(background: widget.squareStates[2].background, squareIndex: 10, text: entries[10]),
                                Square(background: widget.squareStates[3].background, squareIndex: 15, text: entries[15]),
                                Square(background: widget.squareStates[4].background, squareIndex: 20, text: entries[20]),
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
                                Square(background: widget.squareStates[5].background, squareIndex: 1, text: entries[1]),
                                Square(background: widget.squareStates[6].background, squareIndex: 6, text: entries[6]),
                                Square(background: widget.squareStates[7].background, squareIndex: 11, text: entries[11]),
                                Square(background: widget.squareStates[8].background, squareIndex: 16, text: entries[16]),
                                Square(background: widget.squareStates[9].background, squareIndex: 21, text: entries[21]),
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
                                Square(background: widget.squareStates[10].background, squareIndex: 2, text: entries[2]),
                                Square(background: widget.squareStates[11].background, squareIndex: 7, text: entries[7]),
                                Square(background: widget.squareStates[12].background, squareIndex: 12, text: entries[12]),
                                Square(background: widget.squareStates[13].background, squareIndex: 17, text: entries[17]),
                                Square(background: widget.squareStates[14].background, squareIndex: 22, text: entries[22]),
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
                                Square(background: widget.squareStates[15].background, squareIndex: 3, text: entries[3]),
                                Square(background: widget.squareStates[16].background, squareIndex: 8, text: entries[8]),
                                Square(background: widget.squareStates[17].background, squareIndex: 13, text: entries[13]),
                                Square(background: widget.squareStates[18].background, squareIndex: 18, text: entries[18]),
                                Square(background: widget.squareStates[19].background, squareIndex: 23, text: entries[23]),
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
                                Square(background: widget.squareStates[20].background, squareIndex: 4, text: entries[4]),
                                Square(background: widget.squareStates[21].background, squareIndex: 9, text: entries[9]),
                                Square(background: widget.squareStates[22].background, squareIndex: 14, text: entries[14]),
                                Square(background: widget.squareStates[23].background, squareIndex: 19, text: entries[19]),
                                Square(background: widget.squareStates[24].background, squareIndex: 24, text: entries[24]),
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
          } else {
            return Scaffold(
              backgroundColor: Theme.of(context).backgroundColor,
              appBar: AppBar(
                title: Center(
                  child: Text(widget.title),
                )
              ),
              body: Center(
                child: Text('BINGO')
              )
          );
        }
      }
    );
  }

  void _loadState() async {
    final DatabaseManager db = DatabaseManager.getInstance();
    List<Map> rawData = await db.getSquareStates();
    widget.squareStates = rawData.map( (record) {
      return Square(
        squareIndex: record['square'],
        background: record['state']
      );
    }).toList();

    setState(() {});
  }
}