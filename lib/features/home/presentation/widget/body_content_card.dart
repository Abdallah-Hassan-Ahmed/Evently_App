import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/routes/base_routes.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/home/presentation/view/details_event_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyCardContent extends StatefulWidget {
  final bool initialSelected;

  const BodyCardContent({super.key, this.initialSelected = true});

  @override
  State<BodyCardContent> createState() => _BodyCardContentState();
}

class _BodyCardContentState extends State<BodyCardContent> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().themeMode == ThemeMode.dark;
    final isEnglish = context.watch<LanguageProvider>().currentLocal == "en";

    return GestureDetector(
      onTap: () => Navigator.push(context, BaseRoute(page: EventDetailsView())),
      child: Stack(
        children: [
          Container(
            height: context.height * 0.27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColor.fontColor, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                AppImages.holidayDark,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),

          // -------- Bottom Content --------
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(
                left: context.height * 0.028,
                right: context.height * 0.0258,
                bottom: context.height * 0.015,
              ),
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.015),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isDark
                    ? AppColor.backgroundDarkMode
                    : AppColor.backgroundLightMode,
                gradient: isDark
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColor.fontColor,
                          AppColor.backgroundDarkMode,
                        ],
                      )
                    : null,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "I will go to cafe to night",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(width: context.width * 0.02),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    icon: Icon(
                      isSelected
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: Theme.of(context).colorScheme.onError,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // -------- Date Badge --------
          Positioned(
            top: context.height * 0.017,
            left: isEnglish ? context.height * 0.03 : null,
            right: isEnglish ? null : context.height * 0.03,
            child: Container(
              padding: EdgeInsets.all(context.height * 0.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isDark
                    ? AppColor.backgroundDarkMode
                    : AppColor.backgroundLightMode,
                gradient: isDark
                    ? LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColor.fontColor,
                          AppColor.backgroundDarkMode,
                        ],
                      )
                    : null,
              ),
              child: Column(
                children: [
                  Text("27", style: Theme.of(context).textTheme.headlineMedium),
                  Text(
                    "Nov",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
