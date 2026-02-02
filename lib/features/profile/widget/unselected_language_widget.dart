import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class UnSelectedWidget extends StatelessWidget {
  const UnSelectedWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppFontStyles.bold20Black);
  }
}
