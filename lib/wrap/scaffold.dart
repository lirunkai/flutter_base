import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Scaffold Demo'),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello Echo'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50.0,),
          shape: const CircularNotchedRectangle(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}