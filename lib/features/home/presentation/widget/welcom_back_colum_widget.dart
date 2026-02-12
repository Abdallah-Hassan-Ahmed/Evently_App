import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class WelcomeBackColumn extends StatelessWidget {
  const WelcomeBackColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.current.welcome_back, style: AppFontStyles.semi14DarkMode),
        Text("Abdallah Hassan", style: AppFontStyles.bold20White),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: AppColor.backgroundLightMode,
            ),
            Text("Ismailia,Egypt", style: AppFontStyles.semi14DarkMode),
          ],
        ),
      ],
    );
  }
}
