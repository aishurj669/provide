import 'package:flutter/material.dart';

class BMICalculation extends ChangeNotifier{
  double height;
  double weight;
  double result1;
  String status="";

  double get getBMI {
    return result1;
  }

  String get getStatus {
    return status;
  }

  void BMI(double height2,double weight2){
    height = (height2)/100;
    weight = (weight2);
    double square = height*height;
    result1 = weight/square;

     if (result1 < 18.5)
        status = "underweight";
     else if (result1 <= 24.9)
       status = "Normal";
     else if (result1 <= 30)
       status = "overweight";
     print('$status');
     notifyListeners();

  }

}