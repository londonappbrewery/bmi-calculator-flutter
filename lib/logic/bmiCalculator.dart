import 'dart:math';

class BMICalculator {
  BMICalculator({this.weight, this.height});
  final double weight;
  final double height;
  double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getBMIInterpreation() {

  }
}
