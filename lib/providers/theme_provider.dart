import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  setTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
