import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final Icon icon ;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      // color: AppColor.fontColor,
      alignment: Alignment.center,
      style: IconButton.styleFrom(
        
        backgroundColor: AppColor.transparent,
        elevation: 0,
        shape: CircleBorder(side: BorderSide(color: AppColor.fontColor)),
      ),
    );
  }
}
