import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '第三放url_launcher',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('使用url_launcher'),
        ),
        body: new Center(
          child: new RaisedButton(
            child: new Text('打开页面'),
            onPressed: (){
              const url = 'https://www.baidu.com';
              launch(url);
            },
          ),
        ),
      ),
    );
  }
}
