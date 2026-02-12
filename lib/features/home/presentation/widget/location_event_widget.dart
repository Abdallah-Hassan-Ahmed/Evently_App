import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class EventLocation extends StatelessWidget {
  const EventLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColor.fontColor, width: 2),
      ),
    );
  }
}
