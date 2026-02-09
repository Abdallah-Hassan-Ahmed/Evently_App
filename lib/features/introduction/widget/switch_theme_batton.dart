import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchThemeBotton extends StatelessWidget {
  const SwitchThemeBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ThemeProvider>();

    return SizedBox(
      height: context.height * 0.038,
      width: context.width * 0.2,
      child: AnimatedToggleSwitch<String>.size(
        textDirection: TextDirection.rtl,
        current: provider.themeMode == ThemeMode.light
            ? AppImages.sun
            : AppImages.moon,
        values: const [AppImages.moon, AppImages.sun],
        indicatorSize: const Size.fromWidth(40),
        borderWidth: 2,

        /// icons (sun / moon)
        iconBuilder: (value) {
          final isSelected =
              (value == AppImages.sun &&
                  provider.themeMode == ThemeMode.light) ||
              (value == AppImages.moon && provider.themeMode == ThemeMode.dark);

          return Center(
            child: Image.asset(
              value,
              width: 15,
              height: 15,
              color: isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : AppColor.fontColor,
            ),
          );
        },

        style: ToggleStyle(
          backgroundColor: AppColor.transparent,
          borderColor: AppColor.fontColor,
          indicatorColor: AppColor.fontColor,
          borderRadius: BorderRadius.circular(16),
        ),

        onChanged: (value) {
          provider.changeTheme(
            value == AppImages.sun ? ThemeMode.light : ThemeMode.dark,
          );
        },
      ),
    );
  }
}
