// ignore_for_file: avoid_print, unused_local_variable
import 'dart:async';
import 'dart:developer';
import 'dart:math' hide log;
import 'package:babyzone/data/datasource/remote/children_data.dart';
import 'package:babyzone/data/model/children_model.dart';
import 'package:fl_chart/fl_chart.dart';
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
  late List<FlSpot> ecgData;

  List<FlSpot> generateSampleECGData(double bpm) {
    List<FlSpot> data = [];
    double interval = 60 / bpm; // seconds per beat
    double amplitude = 2.0; // Arbitrary amplitude for simulation
    double noiseLevel = 0.05; // Noise level for realism

    for (int i = 0; i < 1000; i++) {
      double x = i.toDouble() / 100.0; // Convert to seconds
      double y = amplitude * sin(2 * pi * x / interval) +
          noiseLevel * (Random().nextDouble() - 0.5);
      data.add(FlSpot(x, y));
    }
    return data;
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
          ecgData = generateSampleECGData(double.parse(children.bmp.toString())); // Example BPM
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
      editLED(1.toString(), fanStatus, ledStatus);
      update();
    } else {
      fanStatus = 0;
      fanStatusBool = false;
      editLED(1.toString(), fanStatus, ledStatus);
      update();
    }
  }

  late int ledStatus;
  late bool ledStatusBool;

  changeLed(bool a) {
    if (a == true) {
      ledStatus = 1;
      ledStatusBool = true;
      editLED(1.toString(), fanStatus, ledStatus);
      update();
    } else {
      ledStatus = 0;
      ledStatusBool = false;
      editLED(1.toString(), fanStatus, ledStatus);
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
