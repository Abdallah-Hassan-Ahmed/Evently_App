import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppFontStyles.italic16Primary.copyWith(
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          decorationColor: AppColor.fontColor,
        ),
      ),
    );
  }
}
