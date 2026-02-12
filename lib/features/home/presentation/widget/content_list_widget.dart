import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  const ContentList({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.text,
    required this.image,
    this.color,
    this.colorText,
    this.colorImage,
    this.unSelectColorImage,
  });
  final bool isSelected;
  final VoidCallback onTap;
  final String text;
  final String image;
  final Color? color;
  final Color? colorImage;
  final Color? unSelectColorImage;
  final TextStyle? colorText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.025,
          vertical: context.width * 0.02,
        ),
        alignment: Alignment.center,
        // height: context.height * 0.04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected
              ? color ?? AppColor.backgroundLightMode
              : AppColor.transparent,

          border: Border.all(color: color ?? AppColor.backgroundLightMode),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              color: isSelected
                  ? colorImage ?? AppColor.fontColor
                  : unSelectColorImage ?? AppColor.backgroundLightMode,
            ),
            SizedBox(width: context.width * 0.02),
            Text(
              text,
              style: isSelected
                  ? AppFontStyles.semi12Black
                  : colorText ?? AppFontStyles.semi12White,
            ),
          ],
        ),
      ),
    );
  }
}
