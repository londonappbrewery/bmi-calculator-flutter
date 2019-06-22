import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final Color darkBlue = Color(0xff0A0E21);
  final Color yellow = Color(0xfffbdd8c);
  final Color white = Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: darkBlue,
        scaffoldBackgroundColor: darkBlue,
        textTheme: TextTheme(
          body1: TextStyle(color: white),
        ),
      ),
      home: InputPage(),
    );
  }
}
