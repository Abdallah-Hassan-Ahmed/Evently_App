import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundLightMode,
    colorScheme: ColorScheme.light(
      primary: AppColor.fontLightModeColor,
      onPrimary: Colors.white,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20Black,
      headlineMedium: AppFontStyles.semi14LightMode,
      labelSmall: AppFontStyles.bold11Light,
      headlineSmall: AppFontStyles.semi16gray
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundDarkMode,
    colorScheme: ColorScheme.dark(
      primary: AppColor.fontDarkModeColor,
      onPrimary: Colors.black,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20White,
      headlineMedium: AppFontStyles.semi14DarkMode,
      labelSmall: AppFontStyles.bold11Dark,
      headlineSmall: AppFontStyles.semi16DarkMode
    ),

  );
}
