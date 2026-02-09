import 'package:evently_app/features/Authentication/presentation/view/create_account_view.dart';
import 'package:evently_app/features/Authentication/presentation/view/forget_password_view.dart';
import 'package:evently_app/features/Authentication/presentation/view/login_view.dart';
import 'package:evently_app/features/home/view/home_view.dart';
import 'package:evently_app/features/introduction/view/intro_view.dart';
import 'package:evently_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:evently_app/features/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = HomeView.routeName;
  static const String profile = ProfileView.routeName;
  static const String intro = IntroView.routeName;
  static const String onBoarding = OnBoardingView.routeName;
  static const String logIn = LogInView.routeName;
  static const String createAccount = CreateAccountView.routeName;
  static const String forgetPassword = ForgetPasswordView.routeName;


  static Map<String, WidgetBuilder> routes = {
    home: (_) => const HomeView(),
    profile: (_) =>  ProfileView(),
    intro: (_) =>  IntroView(),
    onBoarding: (_) =>  OnBoardingView(),
    logIn: (_) =>  LogInView(),
    createAccount: (_) =>  CreateAccountView(),
    forgetPassword: (_) =>  ForgetPasswordView(),
  };
}
