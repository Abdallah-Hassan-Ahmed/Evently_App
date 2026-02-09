import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

enum ButtonContentAlignment { left, center, right }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.bgColor,
    this.icon,
    this.iconColor = Colors.white,
    this.iconSize = 20,
    this.spacing = 8,
    this.contentAlignment = ButtonContentAlignment.center,
    this.borderColor,
    this.textStyle,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? bgColor;
  final Color? borderColor;

  final Widget? icon;
  final TextStyle? textStyle;
  final Color iconColor;
  final double iconSize;
  final double spacing;

  final ButtonContentAlignment contentAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: bgColor ?? AppColor.fontColor,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: borderColor ?? AppColor.transparent,
              width: 1.5,
            ),
          ),
        ),
        child: Align(alignment: _getAlignment(), child: _buildContent()),
      ),
    );
  }

  Alignment _getAlignment() {
    switch (contentAlignment) {
      case ButtonContentAlignment.left:
        return Alignment.centerLeft;
      case ButtonContentAlignment.right:
        return Alignment.centerRight;
      default:
        return Alignment.center;
    }
  }

  Widget _buildContent() {
    if (icon == null) {
      return Text(text, style: textStyle ?? AppFontStyles.semi20white);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) icon!,
        if (icon == null) SizedBox(width: spacing),
        SizedBox(width: spacing),
        Text(text, style: textStyle ?? AppFontStyles.semi20white),
      ],
    );
  }
}
