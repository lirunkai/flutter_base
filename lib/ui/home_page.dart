import 'package:flutter/material.dart';
import 'package:flutter_demo/model/user.dart';
import 'package:flutter_demo/ui/user_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    User user = UserContainer.of(context).user;
    if(user == null) {
      return new LoginPage();
    } else {
      return new Scaffold(
        body: new Container(
          child: new Center(
            child: new Text('一登录'),
          ),
        ),
      );
    }
  }
}