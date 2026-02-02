import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class SelectedWidget extends StatelessWidget {
  const SelectedWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppFontStyles.bold20Primary),
        Icon(Icons.check_sharp, color: AppColor.fontColor, size: 30),
      ],
    );
  }
}
