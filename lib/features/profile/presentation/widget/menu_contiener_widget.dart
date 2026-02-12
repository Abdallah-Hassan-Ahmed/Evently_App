import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class MenuContainerWidget extends StatelessWidget {
  const MenuContainerWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: context.height * 0.02),
      padding: EdgeInsets.symmetric(horizontal: context.height * 0.02),
      height: context.height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.fontColor, width: 1.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
            style: AppFontStyles.bold20Primary,
          ),
          Icon(Icons.arrow_drop_down, color: AppColor.fontColor, size: 35),
        ],
      ),
    );
  }
}
