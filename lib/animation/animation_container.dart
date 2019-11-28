import 'package:flutter/material.dart';

class AnimationContainerDemo extends StatefulWidget {
  AnimationContainerDemo({Key key}):super(key: key);

  @override
  _AnimationContainerDemoState createState() => _AnimationContainerDemoState();
}

class _AnimationContainerDemoState extends State<AnimationContainerDemo> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75,),
        ),
      ),
    );
  }
}