import 'package:bmi_calculator/screens/input.dart';
import 'package:bmi_calculator/screens/secondscreen.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      //named routes 
      routes: {
        '/':(context)=>InputPage(),
        '/second':(context)=>Resultscreen()

      },
    );
  }
}

