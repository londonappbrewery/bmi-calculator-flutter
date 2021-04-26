import 'package:bmi_calculator/constants/conatants.dart';
import 'package:flutter/material.dart';

class ReuseIcon extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReuseIcon({@required this.gender, @required this.icon_type});
  final String gender;
  // ignore: non_constant_identifier_names
  final IconData icon_type;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon_type,
          size: iconsize,
        ),
        SizedBox(
          height: spaceheight,
        ),
        Text(this.gender),
      ],
    );
  }
}
