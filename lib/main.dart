import 'package:flutter/material.dart';
import './pages/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          sliderTheme: SliderThemeData(
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              inactiveTickMarkColor: Colors.pink[600],
              overlayColor: Color(0x29EB1555),
              valueIndicatorColor: Colors.pinkAccent,
              inactiveTrackColor: Colors.grey[600],
              activeTrackColor: Colors.pinkAccent,
              thumbColor: Colors.pink[600]),
          indicatorColor: Colors.pinkAccent),
      home: SafeArea(child: InputPage()),
    );
  }
}
