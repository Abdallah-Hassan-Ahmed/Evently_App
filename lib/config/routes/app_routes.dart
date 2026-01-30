import 'package:evently_app/features/home/view/home_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = HomeView.routeName;

  static Map<String, WidgetBuilder> routes = {
    home: (_) => const HomeView(),
  };
}
