import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/home/presentation/widget/scroll_list_widget.dart';
import 'package:evently_app/features/home/presentation/widget/welcom_back_colum_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarHomWidget extends StatelessWidget {
  const AppBarHomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().themeMode == ThemeMode.dark;
    var languageProvider = Provider.of<LanguageProvider>(context);

    return Container(
      height: context.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        color: isDark ? AppColor.backgroundDarkMode : AppColor.fontColor,
        gradient: isDark
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColor.fontColor, AppColor.backgroundDarkMode],
              )
            : null,
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(context.height * 0.02),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeBackColumn(),
                  Spacer(),
                  isDark
                      ? Image.asset(
                          AppImages.moon,
                          color: AppColor.backgroundLightMode,
                        )
                      : Image.asset(
                          AppImages.sun,
                          color: AppColor.backgroundLightMode,
                        ),

                  SizedBox(width: context.width * 0.025),

                  languageProvider.currentLocal == "en"
                      ? SizedBox(
                          height: context.height * 0.04,
                          width: context.height * 0.05,
                          child: Text(
                            "EN",
                            style: AppFontStyles.semi16DarkMode,
                          ),
                        )
                      : SizedBox(
                          height: context.height * 0.03,
                          width: context.height * 0.06,
                          child: Text(
                            "عربي",
                            style: AppFontStyles.semi16DarkMode,
                          ),
                        ),
                ],
              ),
              SizedBox(height: context.height * 0.04),
              SizedBox(height: context.height * 0.05, child: ScrollList()),
            ],
          ),
        ),
      ),
    );
  }
}
