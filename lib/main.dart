import 'package:flutter/material.dart';
import 'screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

          primaryColor: Color(0xFF04040C),
          scaffoldBackgroundColor: Color(0xFF04040C),
          accentColor: Color(0xFFEB2D54),

      ),
      home: InputPage(),
    );
  }
}

