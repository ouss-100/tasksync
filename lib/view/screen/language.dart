import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/core/constant/routes_names.dart';
import 'package:tasksync/core/localization/changelocal.dart';
import 'package:tasksync/view/widget/language/customlangbutton.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomLangButton(
                name: 'En',
                onPressed: () {
                  controller.changeLocale("en");
                  Get.toNamed(AppRoutes.onboarding);
                }),
            CustomLangButton(
                name: 'Ar',
                onPressed: () {
                  controller.changeLocale("ar");
                  Get.toNamed(AppRoutes.onboarding);
                }),
          ],
        ),
      ),
    );
  }
}
