import 'package:flutter/material.dart';
import 'screens/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0C1234),
        primaryColor: Color(0xFF0C1234),
        accentColor: Color(0xFFFE0167),
      ),
      home: InputPage(),
    );
  }
}
