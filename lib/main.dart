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

// element
import 'package:flutter_base/element/text.dart';

// wrap
import 'package:flutter_base/wrap/card.dart';
import 'package:flutter_base/wrap/scaffold.dart';
import 'package:flutter_base/wrap/scaffoldDemo2.dart';

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
        'scaffoldDemo': (context) => ScaffoldDemo(),
        'textDemo': (context) => TextDemo(),
        'scaffoldDemo': (context) => ScaffoldDemo(),
        'HeroPage': (context) => HeroPage(),
        'LogoApp': (context) => LogoApp(),
        'animatedContainer': (context) => AnimationContainerDemo(),
        'animationContainerColor': (context) => AnimationContainerDemoColor(),
        'animatedIconPage': (context) => AnimatedIconPage(),
        'animatedList': (context) => AnimatedListPage(),
        'safeArea': (context) => SafeAreaDemo(),
        'animatedSwitch': (context) => AnimatedSwitcherPage(),
        'count': (ccontext) => Count()
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
  final List<String> demos = <String>[
    'scaffoldDemo', 'textDemo', 'scaffoldDemo', 'HeroPage', 'LogoApp', 'animatedContainer',
    'count'
  ];
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
          child: ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemCount: demos.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.access_alarm),
                    width: 50,
                  ),
                  Expanded(
                    child: Text(demos[index]),
                    flex: 1,
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      navigateTo(demos[index]);
                    },
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            }
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('business')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('school')
          )
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800]
      ),
    );
  }

  navigateTo(name) {
    Navigator.of(context).pushNamed(name);
  }
}