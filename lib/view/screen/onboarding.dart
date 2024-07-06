import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/view/widget/onboarding/background.dart';
import 'package:tasksync/view/widget/onboarding/customnextbutton.dart';
import 'package:tasksync/view/widget/onboarding/customskipbutton.dart';
import 'package:tasksync/view/widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());

    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Circles in the background
            Positioned.fill(child: Background()),

            Column(
              children: [
                CustomSkipButton(),
                Expanded(flex: 3, child: CustomSlider()),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Spacer(flex: 2),
                      CustomNextButton(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
