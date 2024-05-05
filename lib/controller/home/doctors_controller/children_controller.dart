// ignore_for_file: avoid_print, unused_local_variable
import 'dart:developer';
import 'package:babyzone/data/datasource/remote/children_data.dart';
import 'package:babyzone/data/model/children_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/functions/handlingdatacontroller.dart';
import '../../../core/services/services.dart';

abstract class ChildrenController extends GetxController {
  initialData();

  getData();
}

class ChildrenControllerImp extends ChildrenController {
  MyServices myServices = Get.find();

  ChildrenData childrenData = ChildrenData(Get.find());

  List<ChildrenModel> children = [];

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

  String calculateAge(String dateOfBirthString) {
    statusRequest = StatusRequest.loading;
    DateTime dateOfBirth = DateTime.parse(dateOfBirthString);
    DateTime currentDate = DateTime.now();

    int age = currentDate.year - dateOfBirth.year;
    if (currentDate.month < dateOfBirth.month ||
        (currentDate.month == dateOfBirth.month &&
            currentDate.day < dateOfBirth.day)) {
      age--;
    }
    statusRequest = StatusRequest.success;
    return age.toString();
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
    children.clear();
    statusRequest = StatusRequest.loading;
    update();
    childrenData.getData(id.toString()).then((value) {
      log("========================================================================$value");
      statusRequest = handlingData(value);
      if (StatusRequest.success == statusRequest) {
        if (value['status'] == "success") {
          List childrens = value['data'];
          children.addAll(childrens.map((e) => ChildrenModel.fromJson(e)));
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
