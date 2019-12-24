import 'package:flutter/material.dart';

class ListenDemo extends StatefulWidget {
  @override
  _ListenDemoState createState() => _ListenDemoState();
}

class _ListenDemoState extends State<ListenDemo> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 300.0,
          height: 150.0,
          child: Text(_event?.toString()??"", style: TextStyle(color: Colors.white),),
        ),
        onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
        onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
        onPointerUp: (PointerUpEvent event) => setState(() => _event = event)
      ),
    );
  }
}