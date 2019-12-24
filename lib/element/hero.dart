import 'package:flutter/material.dart';
import './heroB.dart';

class HeroA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: InkWell(
            child: Hero(
              tag: 'avatar',
              child: ClipOval(
                child: Image.asset('images/bg.jpg', width: 50.0,),
              ),
            ),
            onTap: () {
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
                  return new FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text('团团'),
                      ),
                      body: HeroB(),
                    ),
                  );
                }
              ));
            },
          ),
        )
    );
  }
}