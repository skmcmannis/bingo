import 'package:flutter/material.dart';

class Options extends StatelessWidget{

  @override
  Widget build (BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Options'),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor
            )
          ),
          ListTile(
            title: Text('Reset Game'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}