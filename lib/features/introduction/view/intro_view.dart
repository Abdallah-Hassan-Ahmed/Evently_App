import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});
  static const String routeName = "introName";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.04,
            vertical: context.width * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: context.width * 0.4,
                height: context.height * 0.059,
                child: Image.asset(AppImages.logoUp),
              ),
              SizedBox(height: context.height * 0.033),
              SizedBox(
                height: context.height * 0.375,
                child: Image.asset(AppImages.onboarding1),
              ),
              SizedBox(height: context.height * 0.033),

              Text(
                S.current.personalize_your_experience,
                style: AppFontStyles.bold20Primary,
              ),
              SizedBox(height: context.height * 0.015),

              Text(
                S.current.personalize_description,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
