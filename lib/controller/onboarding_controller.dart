import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tasksync/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImpl extends OnboardingController {
  late PageController pageController;
  int currentIndex = 0;

  @override
  next() {
    currentIndex++;

    if (currentIndex > onBoardingData.length - 1) {
      Get.offAllNamed('/login');
    } else {
      pageController.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  @override
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }
}
