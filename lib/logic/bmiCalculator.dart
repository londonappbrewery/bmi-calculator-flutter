import 'dart:math';

class BMICalculator {
  BMICalculator({this.weight, this.height});
  double weight;
  double height;
  double _bmi;

  calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMILabel() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getBMIDescription() {
    if (_bmi >= 25) {
      return 'You have a Higher than normal body weight. Try to excercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower  than normal body weight. You can eat a bit more';
    }
  }
}
