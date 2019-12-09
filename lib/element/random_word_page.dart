import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsPage extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('hello fuck\'n word'),
      ),
      body: new Center(
        child: new Text('hello fuck\'n word'),
      ));
  }
}
