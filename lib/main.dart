import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/home_page.dart';
import 'package:flutter_demo/ui/user_provider.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  String url;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new UserContainer(user: null, child: new HomePage()),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}