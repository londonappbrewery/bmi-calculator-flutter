import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.title,
    this.route,
    //add a route parameter and a checker with a default value for it.
    Key key,
  }) : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          (route != null)
              ? Navigator.pushNamed(context, "/$route")
              : Navigator.pop(context);
        },
        child: Center(
            child: Text(
          title,
          style: LargeButtonStyle,
        )));
  }
}
