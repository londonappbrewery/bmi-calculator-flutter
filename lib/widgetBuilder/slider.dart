import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider(
      {this.currentValue,
      this.values,
      this.minValue,
      this.maxValue,
      this.numDivisions,
      this.onPress});
  final List values;
  final double currentValue;
  final double minValue;
  final double maxValue;
  final int numDivisions;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: currentValue,
      onChanged: onPress,
      min: minValue,
      max: maxValue,
      label: currentValue.round().toString(),
      divisions: numDivisions,
    );
    // implement this
  }
}
