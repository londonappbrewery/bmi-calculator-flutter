import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FontAwesomeWidget extends StatelessWidget {
  FontAwesomeWidget(
      {@required this.icon,
      @required this.size,
      this.color,
      this.callback,
      this.margin});

  final icon;
  final double size;
  final Color color;
  final callback;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: margin,
      child: IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
          icon: icon,
          iconSize: size,
          onPressed: () {
            callback();
          }),
    );
  }
}
