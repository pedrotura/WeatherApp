import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkThemeActive = false;

  void changeAppTheme() {
    isDarkThemeActive = !isDarkThemeActive;
    notifyListeners();
  }
}