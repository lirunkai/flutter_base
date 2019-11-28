import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardDemoContext(),
    );
  }
}

class CardDemoContext extends StatelessWidget {
  CardDemoContext({ Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Card'),
              subtitle: Text('listTitle'),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Buy'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('Listen'),
                    onPressed: (){}
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );   
  }
}