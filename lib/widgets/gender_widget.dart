
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {

  GenderWidget({
    @required this.icon,
    @required this.iconText
  });

  final FaIcon icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: icon, 
            onPressed: () {  },
            iconSize: 80,
            color: Color(0xFF8D8E98),
            ),
          Text(
            iconText, 
            style: TextStyle(
              fontSize: 30.0,
              color: Color(0xFF8D8E98)
            ),
          ),
        ],
      ),
    );
  }
}