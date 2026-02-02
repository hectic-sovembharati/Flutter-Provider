import 'package:flutter/material.dart';

class Themeprovoder extends ChangeNotifier {
  int _selectedTheme = 1;
  int get selectedTheme => _selectedTheme;

  bool get isDark => _selectedTheme == 2;

  void setTheme(int theme) {
    _selectedTheme = theme;
    notifyListeners();
  }
}
