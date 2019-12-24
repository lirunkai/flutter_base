import 'package:flutter/material.dart';

class HeroB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'avatar',
        child: Image.asset('images/bg.jpg'),
      ),
    );
  }
}