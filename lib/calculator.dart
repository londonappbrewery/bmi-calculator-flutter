import 'dart:math';

class Calculator {
  Calculator(this.height, this.weight);

  final int height;
  final int weight;
  double _bmi;
  String calBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String bmiInterpretation() {
    if (_bmi >= 25) {
      return 'you\'re a fat bitch.stop eating when you\'re bored and workout a bit.';
    } else if (_bmi >= 18) {
      return 'you\'re good to go';
    } else
      return 'Eat something dude,you\'re skinny af';
  }
}
