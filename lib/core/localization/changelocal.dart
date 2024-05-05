import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/controller/home/homescreen_controller.dart';
import '../services/services.dart';
import '../constant/apptheme.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  void changeLang(String langCode) async {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    ThemeData appTheme = langCode == "ar"
        ? themeArabic
        : themeEnglish; // Assuming 'themeArabic' and 'themeEnglish' are defined somewhere
    Get.changeTheme(appTheme);
    await Get.updateLocale(locale);

    // Update the list of strings based on the selected language
    Get.find<HomeScreenControllerImp>().updateListOfStrings(langCode);

    // Navigate to home screen
  }


  @override
  void onInit() {
    // requestPermissionLocation();
    String? sharedPreLang = myServices.sharedPreferences.getString("lang");
    if (sharedPreLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPreLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }




}
