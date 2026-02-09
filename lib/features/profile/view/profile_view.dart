import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/features/profile/widget/bottom_language_widget.dart';
import 'package:evently_app/features/profile/widget/bottom_theme_widget.dart';
import 'package:evently_app/features/profile/widget/menu_contiener_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = 'profileView';

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fontColor,
        title: Text("AppBar"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.language,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            InkWell(
              onTap: () => showLanguageBottomSheet(context),
              child: MenuContainerWidget(text: languageProvider.currentLocal=="en"?S.current.english:S.current.arabic,),
            ),
            Text(
              S.current.theme,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            InkWell(
              onTap: () => showThemeBottomSheet(context),
              child: MenuContainerWidget(text: themeProvider.themeMode==ThemeMode.light?S.current.light:S.current.dark,),
            ),
          ],
        ),
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => BottomLanguageWidget(),
    );
  }
  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => BottomThemeWidget(),
    );
  }
}
