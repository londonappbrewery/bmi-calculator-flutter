import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF375748), //dark grennish 0xFF375748
          scaffoldBackgroundColor: Color(0xFF7DAC9A), //faint0XFF7DAC9A
          accentColor: Colors.green,
          textTheme: TextTheme(
            body1: TextStyle(color: Color(0xFFFFFFFF)),
          )),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
