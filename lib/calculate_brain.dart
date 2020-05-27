import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
CalculatorBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation (){
    if(_bmi >= 25){
      return 'You are higher than normal body weight, Try to Exercise more';
    }else if(_bmi > 18.5){
      return 'You have a normal Weight, Good Job! keep going';
    } else {
      return 'You are less than normal body weight, you can eat bit more';
    }
  }

}