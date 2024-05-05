import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import '../../controller/onboarding_controller.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: IntroScreenOnboarding(
          skipTextStyle: const TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),
          foregroundColor: AppColor.primaryColor,
          introductionList: controller.list,

          onTapSkipButton: () {
            controller.myServices.sharedPreferences
                .setString("step", "1");
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: SystemUiOverlay.values); // to re-show bars
            Get.offAllNamed(AppRoute.login);
          },
          // foregroundColor: Colors.red,
        ));
  }
}
