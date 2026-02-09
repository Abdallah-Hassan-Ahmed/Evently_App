import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/onBoarding/presentation/widget/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = "onBoarding";

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
              Expanded(child:OnboardingBody() ),
            ],
          ),
        ),
      ),
    );
  }
}
