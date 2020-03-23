import 'package:flutter/material.dart';
import '../components/square.dart';

class GameBoard extends StatelessWidget {

  GameBoard({this.title});

  final String title;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('B',
                      style: Theme.of(context).textTheme.display1
                    ),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                Column(
                  children: <Widget>[
                    Text('I',
                      style: Theme.of(context).textTheme.display1
                    ),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                Column(
                  children: <Widget>[
                    Text('N',
                      style: Theme.of(context).textTheme.display1
                    ),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                Column(
                  children: <Widget>[
                    Text('G',
                      style: Theme.of(context).textTheme.display1
                    ),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                Column(
                  children: <Widget>[
                    Text('O',
                      style: Theme.of(context).textTheme.display1
                    ),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}