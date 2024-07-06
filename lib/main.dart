import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/core/constant/color.dart';
import 'package:tasksync/routes.dart';
import 'package:tasksync/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'PlayfairDisplay',
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                height: 1.5,
                color: AppColors.grey),
          )),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
