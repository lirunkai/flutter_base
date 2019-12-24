import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: Text(''),),
              Container(
                child: Column(
                  children: str.split("").map((c) => Text(c, textScaleFactor: 2.0,)).toList(),
                ),
              )
            ],
          ),
        ),
    );
  }
}