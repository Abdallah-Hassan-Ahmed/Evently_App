import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.22,
      width: context.width * 0.35,
      child: Image.asset(AppImages.logo),
    );
  }
}
