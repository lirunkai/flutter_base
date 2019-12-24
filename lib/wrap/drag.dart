import 'package:flutter/material.dart';

class DragDemo extends StatefulWidget {
  @override
  _DragDemoState createState() => _DragDemoState();
}

class _DragDemoState extends State<DragDemo> with SingleTickerProviderStateMixin {
  double _top = 20.0;
  double _left = 20.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text('A'),),
            onPanDown: (DragDownDetails e) {
              print('用户手指按下 ${e.globalPosition}');
            },
            onPanUpdate: (DragUpdateDetails e) {
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
}