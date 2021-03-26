import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    this.img,
    this.nam,
  });
  final IconData img;
  final String nam;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          img,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          nam,
          style: kNamTextStyle,
        )
      ],
    );
  }
}
