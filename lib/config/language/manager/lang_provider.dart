
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLocal = 'en';
  void changeLanguage(String newLanguage) {
    if (currentLocal == newLanguage) {
      return;
    }
    currentLocal = newLanguage;

    notifyListeners();
  }
}
