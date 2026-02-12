import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundLightMode,
    colorScheme: ColorScheme.light(
      primary: AppColor.fontLightModeColor,
      onPrimary: Colors.white,
      onSecondary: AppColor.fontColor,
      onError: AppColor.fontColor,
      /// In the `AppTheme` class, `onPrimaryContainer` is a property defined in the `lightTheme` and
      /// `darkTheme` static variables of type `ThemeData`.
      onPrimaryContainer: AppColor.backgroundDarkMode,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20Black,
      headlineMedium: AppFontStyles.semi14LightMode,
      labelSmall: AppFontStyles.bold11Light,
      headlineSmall: AppFontStyles.semi16gray,
      bodyLarge: AppFontStyles.semi12White,
      bodyMedium: AppFontStyles.semi12Black,
      bodySmall: AppFontStyles.semi16LightMode,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundDarkMode,
    colorScheme: ColorScheme.dark(
      primary: AppColor.fontDarkModeColor,
      onPrimary: Colors.black,
      onSecondary: AppColor.backgroundDarkMode,
      onError: AppColor.backgroundLightMode,
      onPrimaryContainer: AppColor.backgroundLightMode,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFontStyles.bold20White,
      headlineMedium: AppFontStyles.semi14DarkMode,
      labelSmall: AppFontStyles.bold11Dark,
      headlineSmall: AppFontStyles.semi16DarkMode,
      bodyLarge: AppFontStyles.semi12Black,
      bodyMedium: AppFontStyles.semi12White,
      bodySmall: AppFontStyles.semi16DarkMode,
    ),
  );
}
