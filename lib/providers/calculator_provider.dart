import 'package:calculator/extensions/math_result_format.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String _recentDisplayCalculation = "";
  String _currentCalculation = "0";
  String _currentDisplayCalculation = "0";
  List<String> _splittedNumber = [];
  String _lastNumber = "";
  String _replacementLastNumber = "";
  bool _isCalculating = false;
  String get recentCalculation => _recentDisplayCalculation;
  String get currentCalculation => _currentDisplayCalculation;

  clearCurrentCalculation() {
    _currentCalculation = "0";
    _currentDisplayCalculation = "0";
    notifyListeners();
  }

  addToCurrentCalculation(String value, String display) {
    if (_isCalculating) {
      if (int.tryParse(value) != null) {
        _recentDisplayCalculation = _currentDisplayCalculation;
        _currentCalculation = "0";
        _currentDisplayCalculation = "0";
      } else {
        _recentDisplayCalculation = _currentDisplayCalculation;
        _currentCalculation = _currentDisplayCalculation;
      }
    }
    if (_currentCalculation.length > 100) {
      return;
    }
    if (_currentCalculation == "0" && int.tryParse(value) == null) {
      return;
    }
    if (_currentCalculation.isNotEmpty &&
        int.tryParse(
              _currentCalculation.substring(_currentCalculation.length - 1),
            ) ==
            null &&
        int.tryParse(value) == null) {
      return;
    }
    if (_currentCalculation.contains(RegExp(r"[.](\d+)?$")) && value == ".") {
      return;
    }
    if (value == "+/-") {
      _splittedNumber = _currentCalculation.split(RegExp(r"[^a-zA-Z0-9.]"));
      if (_splittedNumber.length == 1) {
        return;
      } else if (_splittedNumber.isNotEmpty) {
        _lastNumber = _splittedNumber.last;
        _replacementLastNumber = _lastNumber;
        if (_lastNumber.isNotEmpty) {
          if (_currentCalculation.substring(
                _currentCalculation.length - _lastNumber.length - 1,
                _currentCalculation.length - _lastNumber.length,
              ) ==
              "-") {
            _replacementLastNumber = "+$_lastNumber";
          } else if (_currentCalculation.substring(
                _currentCalculation.length - _lastNumber.length - 1,
                _currentCalculation.length - _lastNumber.length,
              ) ==
              "+") {
            _replacementLastNumber = "-$_replacementLastNumber";
          }
          _currentCalculation =
              _currentCalculation.substring(
                0,
                _currentCalculation.length - _lastNumber.length - 1,
              ) +
              _replacementLastNumber;
          _currentDisplayCalculation =
              _currentDisplayCalculation.substring(
                0,
                _currentDisplayCalculation.length - _lastNumber.length - 1,
              ) +
              _replacementLastNumber;
        }
        notifyListeners();
        return;
      }
    }
    if (_currentCalculation == "0") {
      _currentCalculation = value;
      _currentDisplayCalculation = display;
    } else {
      _currentCalculation += value;
      _currentDisplayCalculation += display;
    }
    _isCalculating = false;

    notifyListeners();
  }

  deleteCurrentCalculation() {
    if (_currentCalculation == "0") {
      return;
    }
    if (_currentCalculation.length == 1) {
      _currentCalculation = "0";
      _currentDisplayCalculation = "0";
      notifyListeners();
      return;
    }
    if (_currentCalculation.isNotEmpty) {
      int deleteLength = 1;
      _currentCalculation = _currentCalculation.substring(
        0,
        _currentCalculation.length - deleteLength,
      );
      deleteLength = 1;
      if (_currentDisplayCalculation.endsWith("\\%")) {
        deleteLength = 3;
      }
      _currentDisplayCalculation = _currentDisplayCalculation.substring(
        0,
        _currentDisplayCalculation.length - deleteLength,
      );
    }
    notifyListeners();
  }

  calculate() {
    ExpressionParser p = GrammarParser(ParserOptions());
    if (_currentCalculation == "0") {
      return;
    }
    _currentCalculation = _currentCalculation.replaceAll("%", "/100");
    Expression expression = p.parse(_currentCalculation);
    ContextModel cm = ContextModel();
    double result = expression.evaluate(EvaluationType.REAL, cm);
    _recentDisplayCalculation = _currentDisplayCalculation;
    _currentDisplayCalculation = result.toStringFixedPrecision();
    _currentCalculation = "0";
    print("Result: $_currentDisplayCalculation");
    print(expression);
    print(result.toString());
    if (_currentDisplayCalculation.contains("e+")) {
      _currentDisplayCalculation =
          "${_currentDisplayCalculation.split("e+").first}×10^{${_currentDisplayCalculation.split("e+").last}}";
    } else if (_currentDisplayCalculation.contains("e-")) {
      _currentDisplayCalculation =
          "${_currentDisplayCalculation.split("e+").first}×10^-{${_currentDisplayCalculation.split("e+").last}}";
    }
    if (result.toStringFixedPrecision().contains("e+")) {
      _recentDisplayCalculation = _currentDisplayCalculation;
    }

    _isCalculating = true;
    notifyListeners();
  }
}
