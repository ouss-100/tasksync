import 'package:flutter/material.dart';
import 'package:tasksync/core/constant/routes_names.dart';
import 'package:tasksync/view/screen/auth/login.dart';
import 'package:tasksync/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const OnBoarding(),
};
