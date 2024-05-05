import 'package:babyzone/data/model/children_model.dart';
import 'package:babyzone/view/screen/home/control/childrenView.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:babyzone/view/screen/home/home.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/icon_broken.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../core/functions/translatedordatabase.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/children_data.dart';
import '../../view/screen/home/doctor/DoctorsAndNursesScreenView.dart';
import '../../view/screen/home/settings.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  MyServices myServices = Get.find();
  int currentIndex = 0;
  late StatusRequest statusRequest;
  bool canPop = false;

  List<Widget> listPage = [
    const HomePage(),
    const DoctorsAndNursesScreen(),
    const ChildrenViewScreen(),
    const Settings(),
  ];

  List<IconData> listOfIcons = [
    IconBroken.Home,
    IconBroken.User1,
    IconBroken.Game,
    IconBroken.Setting,
  ];

  void updateListOfStrings(String langCode) {
    listOfStrings = [
      translateDataBase("الرئسية", "Home", langCode),
      translateDataBase("الاطباء", "Doctors", langCode),
      translateDataBase("التحكم", "Controller", langCode),
      translateDataBase("الاعدادات", "Settings", langCode),
    ];
    update(); // Trigger UI update
  }

  List<String> listOfStrings = [
    translateDataBase("الرئسية", "Home"),
    translateDataBase("الاطباء", "Doctors"),
    translateDataBase("التحكم", "Controller"),
    translateDataBase("الاعدادات", "Settings"),
  ];

  @override
  changePage(currentPage) {
    currentIndex = currentPage;
    update();
    HapticFeedback.lightImpact();
    update();
  }

  ChildrenData childrenData = ChildrenData(Get.find());

  late ChildModel childModel;

  getData() {
    statusRequest = StatusRequest.loading;
    update();
    childrenData
        .listData(myServices.sharedPreferences.getString("id"))
        .then((value) {
      log("========================================================================$value");
      statusRequest = handlingData(value);
      if (StatusRequest.success == statusRequest) {
        if (value['status'] == "success") {
          childModel = ChildModel.fromJson(value['data']);
          update();
        } else {
          statusRequest = StatusRequest.failure;
          update();
        }
      }
    }).catchError((onError) {
      log("Error=== : ===$onError");
      update();
    });

    update();
  }

  @override
  void onInit() async {
    childModel = ChildModel();
    getData();
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      log(token.toString());
    });
    String id = myServices.sharedPreferences.getString("id")!;
    String approve = myServices.sharedPreferences.getString("approve")!;
    FirebaseMessaging.instance.subscribeToTopic("users");
    FirebaseMessaging.instance.subscribeToTopic("user$id");
    FirebaseMessaging.instance.subscribeToTopic("app$approve");

    super.onInit();
  }
}
