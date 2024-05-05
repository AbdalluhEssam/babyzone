import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';

import '../core/services/services.dart';

abstract class OnBoardingController extends GetxController {
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  final List<Introduction> list = [
    Introduction(
      titleTextStyle:
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      subTitleTextStyle:
      const TextStyle(fontSize: 16 , fontWeight: FontWeight.bold, color: Color.fromRGBO(
          206, 206, 206, 1.0)),
      imageWidth: 500,
      imageHeight: 300,
      title: 'We are one ',
      subTitle: 'of the most important people interested in providing complete care for newborn babies and providing them with all means of comfort and care.',
      imageUrl: 'assets/images/on1.png',
    ),
    Introduction(
      titleTextStyle:
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      subTitleTextStyle:
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(
          201, 198, 198, 1.0)),
      imageWidth: 500,
      imageHeight: 300,
      title: 'We provide you with a selection',
      subTitle: 'of all doctors and nurses specialized in the world of newborn babies',
      imageUrl: 'assets/images/on2.png',
    ),
  ];

  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
