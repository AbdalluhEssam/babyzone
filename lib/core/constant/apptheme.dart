import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'color.dart';

ThemeData themeEnglish = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColor.backgroundColor,
  cardColor: AppColor.primaryColor,
  // listTileTheme: const ListTileThemeData(
  //   tileColor: AppColor.primaryColor,
  // ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)))),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: AppColor.backgroundColor,
    foregroundColor: AppColor.primaryColor,
    centerTitle: true,
    titleTextStyle: TextStyle(
        fontSize: 25,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
        fontWeight: FontWeight.bold),
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.backgroundColor,
        statusBarIconBrightness: Brightness.dark),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
        fontFamily: "Cairo"),
    displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: AppColor.black,
        fontFamily: "Cairo"),
    bodyLarge: TextStyle(
        height: 2, color: AppColor.black, fontSize: 14, fontFamily: "Cairo"),
    bodyMedium: TextStyle(
        height: 2,
        fontWeight: FontWeight.normal,
        color: AppColor.black,
        fontFamily: "Cairo",
        fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColor.backgroundColor,
  cardColor: AppColor.primaryColor,
  // listTileTheme: const ListTileThemeData(
  //   tileColor: AppColor.primaryColor,
  // ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)))),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: AppColor.backgroundColor,
    foregroundColor: AppColor.primaryColor,
    centerTitle: true,
    titleTextStyle: TextStyle(
        fontSize: 25,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
        fontWeight: FontWeight.bold),
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.backgroundColor,
        statusBarIconBrightness: Brightness.dark),
  ),
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
        fontFamily: "Cairo"),
    displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.black,
        fontFamily: "Cairo"),
    bodyLarge: TextStyle(
        height: 2, color: AppColor.black, fontSize: 14, fontFamily: "Cairo"),
    bodyMedium: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        color: AppColor.black,
        fontSize: 14,
        fontFamily: "Cairo"),
  ),
  primarySwatch: Colors.blue,
);



class ThemeService {
  final litghTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.backgroundColor,
    cardColor: AppColor.primaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColor.black),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.backgroundColor,
      foregroundColor: AppColor.primaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 25,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.backgroundColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
      ),
      displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.white, // Change color to white for light mode
        fontFamily: "Cairo",
      ),
      bodyLarge: TextStyle(
        height: 2,
        color: AppColor.white, // Change color to white for light mode
        fontSize: 14,
        fontFamily: "Cairo",
      ),
      bodyMedium: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        color: AppColor.white, // Change color to white for light mode
        fontSize: 14,
        fontFamily: "Cairo",
      ),
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.black,
    cardColor: AppColor.primaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.black,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColor.white),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColor.black,
      foregroundColor: AppColor.primaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 25,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primaryColor,
        fontFamily: "Cairo",
      ),
      displayMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.white, // Change color to white for dark mode
        fontFamily: "Cairo",
      ),
      bodyLarge: TextStyle(
        height: 2,
        color: AppColor.white, // Change color to white for dark mode
        fontSize: 14,
        fontFamily: "Cairo",
      ),
      bodyMedium: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        color: AppColor.white, // Change color to white for dark mode
        fontSize: 14,
        fontFamily: "Cairo",
      ),
    ),
  );



  final getStorage = GetStorage();
  final darkThemeKey = 'isDarkTheme';

  void saveThemeData(bool isDark) {
    getStorage.write(darkThemeKey, isDark);
  }

  bool isSaveDarkMode() {
    return getStorage.read(darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSaveDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSaveDarkMode());
  }
}
