import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/routes/base_routes.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/features/Authentication/presentation/view/login_view.dart';
import 'package:evently_app/features/onBoarding/presentation/widget/content_onboarding_widged.dart';
import 'package:evently_app/features/onBoarding/presentation/widget/icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingBody extends StatefulWidget {
  OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) => ContentOnboarding(index: index),
          ),
        ),
        SafeArea(
          child: Container(
            height: context.height * 0.06,
            margin: EdgeInsets.only(bottom: context.height * 0.02),
            child: Stack(
              children: [
                Align(
                  alignment: languageProvider.currentLocal == "en"
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Visibility(
                    visible: currentIndex != 0,
                    child: IconButtonWidget(
                      onPressed: () {
                        controller.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(Icons.arrow_back, color: AppColor.fontColor),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...List.generate(3, (index) {
                        return Padding(
                          padding: EdgeInsets.all(context.width * 0.0045),
                          child: dotWidget(index, context),
                        );
                      }),
                    ],
                  ),
                ),
                Align(
                  alignment: languageProvider.currentLocal == "en"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Visibility(
                    visible: currentIndex >= 0,
                    child: IconButtonWidget(
                      onPressed: () {
                        currentIndex != 2
                            ? controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              )
                            : Navigator.pushAndRemoveUntil(
                                context,
                                BaseRoute(page: LogInView(),),
                                (route) => false,
                              );
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: AppColor.fontColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget dotWidget(int index, BuildContext context) {
    bool isSelected = index == currentIndex;
    return Container(
      height: context.height * 0.009,
      width: isSelected ? context.width * 0.05 : context.width * 0.02,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColor.fontColor
            : Theme.of(context).colorScheme.primary,
        borderRadius: isSelected
            ? BorderRadius.circular(36)
            : BorderRadius.circular(999),
      ),
    );
  }
}
