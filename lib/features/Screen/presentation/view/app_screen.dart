import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/features/Screen/presentation/widget/coulmn_nav_bar.dart';
import 'package:evently_app/features/add_event/presentation/view/add_event_view.dart';
import 'package:evently_app/features/home/presentation/view/home_view.dart';
import 'package:evently_app/features/love/presentation/view/love_view.dart';
import 'package:evently_app/features/map/presentation/view/map_view.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:evently_app/features/profile/presentation/view/profile_view.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});
  static const String routeName = '/home_view';

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int selectIndex = 2;

  List<Widget> get screens => [
    MapView(),
    AddEventView(),
    HomeView(),
    LoveView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().themeMode == ThemeMode.dark;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: CircleNavBar(
            // color: Theme.of(context).colorScheme.onSecondary,
            activeIndex: selectIndex,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            height: 60,
            circleWidth: 60,
            color: isDark
                ? AppColor.backgroundDarkMode
                : AppColor.fontColor,
        
            gradient: isDark
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColor.fontColor, AppColor.backgroundDarkMode],
                  )
                : null,
            activeIcons: [
              Icon(
                Icons.location_on,
                size: 30,
                color: AppColor.backgroundLightMode,
              ),
              Icon(Icons.add, size: 33, color: AppColor.backgroundLightMode),
              Icon(Icons.home, size: 30, color: AppColor.backgroundLightMode),
              Icon(Icons.favorite, size: 30, color: AppColor.backgroundLightMode),
              Icon(Icons.person, size: 30, color: AppColor.backgroundLightMode),
            ],
            inactiveIcons: [
              ColumnNavBar(
                icon: Icons.location_on_outlined,
                text: S.of(context).map,
              ),
              ColumnNavBar(icon: Icons.add, text: S.of(context).add_event),
              ColumnNavBar(icon: Icons.home_outlined, text: S.of(context).home),
              ColumnNavBar(
                icon: Icons.favorite_outline,
                text: S.of(context).love,
              ),
              ColumnNavBar(
                icon: Icons.person_2_outlined,
                text: S.of(context).profile,
              ),
            ],
          ),
        ),
      ),
      body: screens[selectIndex],
    );
  }
}
