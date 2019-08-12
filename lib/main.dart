import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Container'),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border.all(
                color: Colors.green,
                width: 8.0
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0))
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}
