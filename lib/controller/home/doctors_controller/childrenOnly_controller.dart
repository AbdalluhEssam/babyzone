// ignore_for_file: avoid_print, unused_local_variable
import 'dart:async';
import 'dart:developer';
import 'package:babyzone/data/datasource/remote/children_data.dart';
import 'package:babyzone/data/model/children_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/functions/handlingdatacontroller.dart';
import '../../../core/services/services.dart';

abstract class ChildrenOnlyController extends GetxController {
  initialData();

  getData();
}

class ChildrenOnlyControllerImp extends ChildrenOnlyController {
  MyServices myServices = Get.find();

  ChildrenData childrenData = ChildrenData(Get.find());

  late ChildrenModel children;

  late StatusRequest statusRequest;

  String? username;
  String? email;
  String? id;
  String? idChild;

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

  late Timer _timer;

  @override
  void onInit() {
    statusRequest = StatusRequest.loading;

    idChild = Get.arguments['idChild'];
    children = ChildrenModel();
    initialData();
    getData();

    _timer = Timer.periodic(Duration(seconds: 10), (timer) => getData());

    super.onInit();
  }

  openWeb(String url) async {
    await launchUrlString(url);
    update();
  }

  @override
  getData() {
    // statusRequest = StatusRequest.loading;
    update();
    childrenData.onlyData(idChild.toString()).then((value) {
      log("========================================================================$value");
      statusRequest = handlingData(value);
      if (StatusRequest.success == statusRequest) {
        if (value['status'] == "success") {
          // List childrens = value['data'];
          children = ChildrenModel();
          children = ChildrenModel.fromJson(value['data']);
          fanStatus = int.parse(children.fanStatues!);
          if (fanStatus == 1) {
            fanStatusBool = true;
          } else {
            fanStatusBool = false;
          }
          ledStatus = int.parse(children.ledStatus!);
          if (ledStatus == 1) {
            ledStatusBool = true;
          } else {
            ledStatusBool = false;
          }
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

  late int fanStatus;
  late bool fanStatusBool;

  changeFan(bool a) {
    if (a == true) {
      fanStatus = 1;
      fanStatusBool = true;
      editLED(1.toString(), fanStatus, 1);
      update();
    } else {
      fanStatus = 0;
      fanStatusBool = false;
      editLED(1.toString(), fanStatus, 1);
      update();
    }
  }

  late int ledStatus;
  late bool ledStatusBool;

  changeLed(bool a) {
    if (a == true) {
      ledStatus = 1;
      ledStatusBool = true;
      editLED(1.toString(), 1, ledStatus);
      update();
    } else {
      ledStatus = 0;
      ledStatusBool = false;
      editLED(1.toString(), 1, ledStatus);
      update();
    }
  }

  editLED(id, fanStatues, ledStatus) {
    // statusRequest = StatusRequest.loading;
    update();
    childrenData.editLED(id, fanStatues, ledStatus).then((value) {
      log("========================================================================$value");
      statusRequest = handlingData(value);
      if (StatusRequest.success == statusRequest) {
        if (value['status'] == "success") {
          getData();
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
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
