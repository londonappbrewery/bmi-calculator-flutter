import 'package:flutter/material.dart';
import './pages/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          sliderTheme: SliderThemeData(
              inactiveTickMarkColor: Colors.pink[600],
              valueIndicatorColor: Colors.pinkAccent,
              inactiveTrackColor: Colors.pink[200],
              activeTrackColor: Colors.pinkAccent,
              thumbColor: Colors.pink[600]),
          indicatorColor: Colors.pinkAccent),
      home: SafeArea(child: InputPage()),
    );
  }
}
