import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/config/widget/custom_botton_widget.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/features/profile/presentation/widget/app_bar_widget.dart';
import 'package:evently_app/features/profile/presentation/widget/bottom_language_widget.dart';
import 'package:evently_app/features/profile/presentation/widget/bottom_theme_widget.dart';
import 'package:evently_app/features/profile/presentation/widget/menu_contiener_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(child: AppBarWidget()),
        SizedBox(height: context.height * 0.04),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  S.current.language,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: context.height * 0.01),

                InkWell(
                  onTap: () => showLanguageBottomSheet(context),
                  child: MenuContainerWidget(
                    text: languageProvider.currentLocal == "en"
                        ? S.current.english
                        : S.current.arabic,
                  ),
                ),
                SizedBox(height: context.height * 0.04),

                Text(
                  S.current.theme,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: context.height * 0.01),

                InkWell(
                  onTap: () => showThemeBottomSheet(context),
                  child: MenuContainerWidget(
                    text: themeProvider.themeMode == ThemeMode.light
                        ? S.current.light
                        : S.current.dark,
                  ),
                ),

                Spacer(),

                CustomButton(
                  text: S.current.logout,
                  onPressed: () {},
                  bgColor: AppColor.red,
                  icon: Icon(
                    Icons.logout_outlined,
                    color: AppColor.backgroundLightMode,
                  ),
                  contentAlignment: languageProvider.currentLocal == "en"
                      ? ButtonContentAlignment.left
                      : ButtonContentAlignment.right,
                ),
                SizedBox(height: context.height * 0.04),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => BottomLanguageWidget(),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) => BottomThemeWidget());
  }
}
