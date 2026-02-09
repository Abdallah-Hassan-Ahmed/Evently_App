import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/onBoarding/data/model/onBoarding_model.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContentOnboarding extends StatelessWidget {
  ContentOnboarding({super.key, required this.index});
  final List<OnboardingModel> onboardingList = [
    OnboardingModel(
      title: S.current.find_events_title,
      subTitle: S.current.find_events_description,
      image: AppImages.onboarding2,
    ),
    OnboardingModel(
      title: S.current.planning_title,
      subTitle: S.current.planning_description,
      image: AppImages.onboarding3,
    ),
    OnboardingModel(
      title: S.current.connect_title,
      subTitle: S.current.connect_description,
      image: AppImages.onboarding4,
    ),
  ];

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: context.height * 0.375,
          child: Image.asset(onboardingList[index].image),
        ),
        SizedBox(height: context.height * 0.05),
        Text(onboardingList[index].title, style: AppFontStyles.bold20Primary),
        SizedBox(height: context.height * 0.035),
        Text(
          onboardingList[index].subTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
