import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider({this.values});
  final List values;

  @override
  Widget build(BuildContext context) {
    return Slider(value: this.values[1], onChanged: null);
    // implement this
  }
}
