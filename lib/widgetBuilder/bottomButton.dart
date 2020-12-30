import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.title,
    this.onClick,
    //add a route parameter and a checker with a default value for it.
    Key key,
  }) : super(key: key);

  final String title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onClick,
        child: Center(
            child: Text(
          title,
          style: LargeButtonStyle,
        )));
  }
}
