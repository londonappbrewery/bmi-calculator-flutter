import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your Weight is Greater then Normal \n Exercise More  !!';
    } else if (_bmi >= 18.5) {
      return 'Normal Body Weight .  \n Good Job  !!';
    } else {
      return 'Your Weight is Lesser then Normal  \n Eat More  !! ';
    }
  }
}
