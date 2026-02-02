import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundLightMode,
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20Black,
      headlineMedium: AppFontStyles.semi14LightMode,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundDarkMode,
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20White,
      headlineMedium: AppFontStyles.semi14DarkMode,
    ),
  );
}
