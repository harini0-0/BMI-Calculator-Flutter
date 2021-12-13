import 'dart:math';

// ignore: camel_case_types
class Bmi_Brain {
  Bmi_Brain({required this.height, required this.weight});
  int height;
  int weight;
  late double _bmi;

  //_bmi=weight/(height/100)^2;
  // ignore: non_constant_identifier_names
  double calculate_bmi() {
    _bmi = this.weight.toDouble() / pow((this.height.toDouble() / 100), 2);
    return _bmi;
  }

  String normalornot() {
    if (this._bmi < 18.5)
      return "You have a lesser value than normal body weight. You can eat a bit more.";
    else if ((this._bmi >= 18.5) && (this._bmi < 25))
      return "You have a normal body weight. Good Job!";
    else
      return "You have a higher value than normal body weight. Try to exercise more.";
  }

  String result() {
    if (this._bmi < 18.5)
      return "UNDERWEIGHT";
    else if ((this._bmi >= 18.5) && (this._bmi < 25))
      return "NORMAL";
    else
      return "OVERWEIGHT";
  }
}
//bmi<18.5 underweight
//bmi>18.5 normal
//bmi>=25 overweight

//overweight:  "You have a higher value than normal body weight. Try to exercise more."
//normal:  "You have a normal body weight. Good Job!"
//underweight: "You have a lesser value than normal body weight. You can eat a bit more."
