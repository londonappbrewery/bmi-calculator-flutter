import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FontAwesomeWidget extends StatelessWidget {
  FontAwesomeWidget(
      {@required this.icon,
      @required this.size,
      this.color,
      @required this.iconText,
      this.callback,
      this.margin,
      @required this.textColor,
      @required this.textSize});

  final icon;
  final double size;
  final Color color;
  final callback;
  final EdgeInsetsGeometry margin;
  final String iconText;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: margin,
            child: Icon(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon,
              size: size,
              color: color,
            )),
        Text(
          iconText,
          style: TextStyle(color: textColor, fontSize: textSize),
        )
      ],
    );
  }
}
