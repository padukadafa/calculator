import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  String _recentCalculation = "";
  String _currentCalculation = "";
  String get recentCalculation => _recentCalculation;
  String get currentCalculation => _currentCalculation;

  setCurrentCalculation(String calc) {
    _currentCalculation = calc;
    notifyListeners();
  }

  calculate() {}
}
