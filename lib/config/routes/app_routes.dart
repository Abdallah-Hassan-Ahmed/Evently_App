import 'package:evently_app/features/home/view/home_view.dart';
import 'package:evently_app/features/introduction/view/intro_view.dart';
import 'package:evently_app/features/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = HomeView.routeName;
  static const String profile = ProfileView.routeName;
  static const String intro = IntroView.routeName;


  static Map<String, WidgetBuilder> routes = {
    home: (_) => const HomeView(),
    profile: (_) =>  ProfileView(),
    intro: (_) =>  IntroView(),
  };
}
