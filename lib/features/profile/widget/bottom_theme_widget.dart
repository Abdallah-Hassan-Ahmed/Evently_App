import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/features/profile/widget/language_selected_widget.dart';
import 'package:evently_app/features/profile/widget/unselected_language_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomThemeWidget extends StatelessWidget {
  const BottomThemeWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
        var themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.08,
        vertical: context.height * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () => themeProvider.changeTheme(ThemeMode.light),
            child:themeProvider.themeMode == ThemeMode.light
                ? SelectedWidget(text: S.current.light)
                : UnSelectedWidget(text: S.current.light),
          ),
          SizedBox(height: context.height * 0.03),
          InkWell(
            onTap: () => themeProvider.changeTheme(ThemeMode.dark),
            child: themeProvider.themeMode == ThemeMode.dark
                ? SelectedWidget(text: S.current.dark)
                : UnSelectedWidget(text: S.current.dark),
          ),
        ],
      ),
    );;
  }
}