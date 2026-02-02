import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  void changeTheme(ThemeMode newMode) {
    if (themeMode == newMode) {
      return;
    }
    themeMode = newMode;
    notifyListeners();
  }
}
