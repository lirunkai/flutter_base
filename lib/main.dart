import 'package:flutter/material.dart';

import 'package:flutter_base/hero_page.dart';
import 'package:flutter_base/logo_app.dart';
import 'package:flutter_base/wrap/safeArea.dart';

//base Widget
// animation
import 'package:flutter_base/animation/animation_container.dart';
import 'package:flutter_base/animation/animated_container_page.dart';
import 'package:flutter_base/animation/animated_icon_page.dart';
import 'package:flutter_base/animation/animated_list_page.dart';
import 'package:flutter_base/animation/animted_switch.dart';

// wrap
import 'package:flutter_base/wrap/card.dart';

void main() => runApp(MyApp());

double screenWidth;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Some Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'HeroPage': (context) => HeroPage(),
        'LogoApp': (context) => LogoApp(),
        'animatedContainer': (context) => AnimationContainerDemo(),
        'animationContainerColor': (context) => AnimationContainerDemoColor(),
        'animatedIconPage': (context) => AnimatedIconPage(),
        'animatedList': (context) => AnimatedListPage(),
        'safeArea': (context) => SafeAreaDemo(),
        'animatedSwitch': (context) => AnimatedSwitcherPage()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}):super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demo'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    navigateTo('HeroPage');
                  },
                  child: Text('HeroPage'),
                ),
                RaisedButton(
                  child: Text('Logo Animation'),
                  onPressed: () {
                    navigateTo('LogoApp');
                  },
                ),
                RaisedButton(
                  child: Text('animatedContainer'),
                  onPressed: () {
                    navigateTo('animatedContainer');
                  },
                ),
                RaisedButton(
                  child: Text('safeArea'),
                  onPressed: () {
                    navigateTo('safeArea');
                  },
                ),
                RaisedButton(
                  child: Text('animationContainerColor'),
                  onPressed: () {
                    navigateTo('animationContainerColor');
                  },
                ),
                RaisedButton(
                  child: Text('animatedIconPage'),
                  onPressed: () {
                    navigateTo('animatedIconPage');
                  },
                ),
                RaisedButton(
                  child: Text('animatedList'),
                  onPressed: () {
                    navigateTo('animatedList');
                  },
                ),
                RaisedButton(
                  child: Text('animatedSwitch'),
                  onPressed: () {
                    navigateTo('animatedSwitch');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateTo(name) {
    Navigator.of(context).pushNamed(name);
  }
}