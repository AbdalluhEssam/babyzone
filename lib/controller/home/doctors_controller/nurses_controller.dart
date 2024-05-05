// ignore_for_file: avoid_print, unused_local_variable
import 'dart:developer';
import 'package:babyzone/data/model/users_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/class/statusrequest.dart';
import '../../../core/functions/handlingdatacontroller.dart';
import '../../../core/services/services.dart';
import '../../../data/datasource/remote/homedata.dart';


abstract class NursesController extends GetxController {
  initialData();

  getData();
}

class NursesControllerImp extends NursesController {
  MyServices myServices = Get.find();

  HomeData homeData = HomeData(Get.find());

  List<UsersModel> users = [];

  late StatusRequest statusRequest;

  String? username;
  String? email;
  String? id;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    email = myServices.sharedPreferences.getString("email");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  openWeb(String url) async {
    await launchUrlString(url);
    update();
  }

  @override
  getData() {
    users.clear();
    statusRequest = StatusRequest.loading;
    update();
    homeData.getNursesData().then((value) {
      log("========================================================================$value");
      statusRequest = handlingData(value);
      if (StatusRequest.success == statusRequest) {
        if (value['status'] == "success") {
          List user = value['data'];
          users
              .addAll(user.map((e) => UsersModel.fromJson(e)));
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
}
