import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Count'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Test the count'
              ),
              new Text(
                '$_count',
                style: Theme.of(context).textTheme.display1
              )
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _incrementCount,
          tooltip: 'increment',
          child: new Icon(Icons.add),
        ),
    );
  }
}