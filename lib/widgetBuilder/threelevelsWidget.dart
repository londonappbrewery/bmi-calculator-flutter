import 'package:flutter/material.dart';
import '../constants.dart';

class ThreeLevelWidget extends StatelessWidget {
  ThreeLevelWidget({
    @required this.labelText,
    @required this.numberText,
    @required this.customChild,
  });
  final String labelText;
  final String numberText;
  final customChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelText,
          style: LabelTextStyle,
        ),
        Text(
          numberText,
          style: NumberTextStyle,
        ),
        customChild
      ],
    );
  }
}
