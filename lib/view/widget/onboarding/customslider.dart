import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/controller/onboarding_controller.dart';
import 'package:tasksync/data/datasource/static/static.dart';

class CustomSlider extends GetView<OnboardingControllerImpl> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(children: [
              const SizedBox(height: 100),
              Image.asset(onBoardingData[index].image!,
                  height: 300, width: 300, fit: BoxFit.fill),
              const SizedBox(height: 25),
              Text(
                onBoardingData[index].title!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(onBoardingData[index].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ]));
  }
}
