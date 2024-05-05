import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "titleexit".tr,
      middleText: "bodyexit".tr,
      titleStyle: const TextStyle(color: AppColor.primaryColor),
      backgroundColor: AppColor.white,
      actions: [
        MaterialButton(
          onPressed: () {
            exit(0);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          color: AppColor.primaryColor,
          textColor: Colors.white,
          child: Text("yes".tr),
        ),
        MaterialButton(
          onPressed: () {
            Get.back();
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          color: AppColor.primaryColor,
          textColor: Colors.white,
          child: Text("no".tr),
        )
      ]);
  return Future.value(true);
}
