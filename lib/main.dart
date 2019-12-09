import 'package:english_words/english_words.dart' as prefix0;
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
import 'package:flutter_base/element/random_word_page.dart';

// wrap
import 'package:flutter_base/wrap/card.dart';
import 'package:flutter_base/wrap/scaffold.dart';

import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

double screenWidth;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Some Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        home: RandomWords(),
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
          // 'randomWords': (context) => RandomWordsPage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
                    navigateTo('scaffoldDemo');
                  },
                  child: new Text('scaffoldDemo'),
                ),
                RaisedButton(
                  onPressed: () {
                    navigateTo('trayc');
                  },
                  child: Text(
                    'textDemo',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
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
                ),
                FlatButton(child: new RandomWords())
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.business), title: Text('business')),
        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('school'))
      ], currentIndex: 1, selectedItemColor: Colors.amber[800]),
    );
  }

  navigateTo(name) {
    Navigator.of(context).pushNamed(name);
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('hello fuck\'n world'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.list),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(pair.asPascalCase, style: _biggerFont),
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final titles = _saved.map((pair) {
        return new ListTile(
            title: new Text(
          pair.asPascalCase,
          style: _biggerFont,
        ));
      });
      final divided = ListTile.divideTiles(
        context: context,
        tiles: titles,
      ).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Saved Suggestions'),
        ),
        body: new ListView(children: divided),
      );
    }));
  }
}
