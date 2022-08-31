import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight,});

  final height;
  final weight;

  double? _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi!.toStringAsFixed(1);
  }
  String getResults(){
    if(_bmi!>=30){
      return 'Obese';
    } else if(_bmi!>=25){
      return 'Overweight';
    }else if(_bmi!> 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi!>=30){
      return 'Your body weight is much higher than the normal body weight. Try to diet and exercise more.';
    }else if(_bmi!>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi!> 18.5){
      return 'You have a normal body weight. Good job!';
    }else {
      return 'You have a lower than body weight. You can eat a bit more.';
    }
  }
}