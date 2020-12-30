import 'dart:math';
import 'bmiResults.dart';

class BMICalculator {
  BMICalculator({this.weight, this.height});
  final double weight;
  final double height;
  BMIResults results;
  double _bmi;

  calculate() {
    _bmi = weight / pow(height / 100, 2);
    results.bmi = _bmi.toStringAsFixed(1);
  }

  BMIResults getBMIResult() {
    if (_bmi >= 25) {
      results.label = 'Overweight';
      results.description =
          'You have a Higher than normal body weight. Try to excercise more';
    } else if (_bmi > 18.5) {
      results.label = 'Normal';
      results.description = 'You have a normal body weight. Good job!';
    } else {
      results.label = 'UnderWeight';
      results.description =
          'You have a lower  than normal body weight. You can eat a bit more';
    }

    return results;
  }
}
