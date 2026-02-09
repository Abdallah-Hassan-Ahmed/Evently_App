import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AppFontStyles {
  static TextStyle bold20Primary = TextStyle(
    fontSize: 20,
    color: AppColor.fontColor,
    fontWeight: FontWeight.w700
  );
  static TextStyle semi16Primary = TextStyle(
    fontSize: 16,
    color: AppColor.fontColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle bold20Black = TextStyle(
    fontSize: 20,
    color: AppColor.fontLightModeColor,
    fontWeight: FontWeight.w700
  );
  static TextStyle bold20White = TextStyle(
    fontSize: 20,
    color: AppColor.fontDarkModeColor,
    fontWeight: FontWeight.w700
  );
  static TextStyle italic16Primary = TextStyle(
    fontSize: 16,
    color: AppColor.fontColor,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline
  );
  static TextStyle semi20Primary = TextStyle(
    fontSize: 20,
    color: AppColor.fontColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi20Black = TextStyle(
    fontSize: 20,
    color: AppColor.blackColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi20white = TextStyle(
    fontSize: 20,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi16DarkMode = TextStyle(
    fontSize: 16,
    color: AppColor.fontDarkModeColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi16LightMode = TextStyle(
    fontSize: 16,
    color: AppColor.fontLightModeColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi14DarkMode = TextStyle(
    fontSize: 14,
    color: AppColor.fontDarkModeColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi14LightMode = TextStyle(
    fontSize: 14,
    color: AppColor.fontLightModeColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle semi16gray = TextStyle(
    fontSize: 16,
    color: AppColor.grayColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle bold11Light = TextStyle(
    fontSize: 11,
    color: AppColor.fontLightModeColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle bold11Dark = TextStyle(
    fontSize: 11,
    color: AppColor.fontDarkModeColor,
    fontWeight: FontWeight.w500
  );
}
