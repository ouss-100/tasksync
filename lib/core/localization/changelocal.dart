import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasksync/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  void changeLocale(String lang) {
    Locale locale = Locale(lang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.prefs.getString('lang');
    if (sharedPrefLang == "Ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "En") {
      language = const Locale("en");
    } else {
      language = Get.deviceLocale;
    }
    super.onInit();
  }
}
