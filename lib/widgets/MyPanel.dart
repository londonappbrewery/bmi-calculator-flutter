import 'package:flutter/material.dart';

class MyPanel extends StatelessWidget {
  MyPanel({
    @required this.color,
    this.widget,
  });

  final Color color;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

//Color(0xFF1D1E33)