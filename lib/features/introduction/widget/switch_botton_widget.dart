import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchBotton extends StatelessWidget {
  const SwitchBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<LanguageProvider>();

    return SizedBox(
      height: context.height * 0.038,
      width: context.width * 0.2,
      child: AnimatedToggleSwitch<String>.size(
        textDirection: TextDirection.rtl,
        current: provider.currentLocal == 'en' ? 'EN' : 'عربي',
        values: const ['عربي', 'EN'],
        indicatorSize: const Size.fromWidth(100),
        borderWidth: 2,

        iconBuilder: (value) {
          final isSelected =
              (value == 'عر' && provider.currentLocal == 'ar') ||
              (value == 'EN' && provider.currentLocal == 'en');
          return Center(
            child: Text(value, style: Theme.of(context).textTheme.labelSmall),
          );
        },

        style: ToggleStyle(
          backgroundColor: AppColor.transparent,
          borderColor: AppColor.fontColor,
          indicatorColor: AppColor.fontColor,
          borderRadius: BorderRadius.circular(16),
        ),

        onChanged: (value) {
          provider.changeLanguage(value == 'EN' ? 'en' : 'ar');
        },
      ),
    );
  }
}
