import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class EventImageContainer extends StatelessWidget {
  const EventImageContainer({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColor.fontColor, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(14),
        child: Image.asset(
          imageUrl,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
