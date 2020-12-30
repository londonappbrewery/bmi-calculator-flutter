import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.title,
    //add a route parameter and a checker with a default value for it.
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/results');
        },
        child: Center(
            child: Text(
          title,
          style: LargeButtonStyle,
        )));
  }
}
