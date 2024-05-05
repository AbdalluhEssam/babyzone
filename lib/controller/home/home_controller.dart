import 'package:babyzone/data/model/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/constant/routes.dart';
import '../../core/services/services.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/homedata.dart';
import '../../data/model/log_model.dart';

abstract class HomeController extends SearchMaxController {
  initialData();

  getData();

  goToItems(List categories, int selectedCat, String catId);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  List<LogModel> banner = [];
  List child = [];
  int? currentIndex;

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
    getData();
    allData();
    // // FirebaseMessaging.instance.getToken().then((value) {
    // //   if (kDebugMode) {
    // //     print(value);
    // //   }
    // //   String? token = value;
    // // });
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData
        .getLogData(myServices.sharedPreferences.getString("id").toString());
    if (kDebugMode) {
      print(
          "========================================================================$response");
    }
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List log = response['data'];
        banner.addAll(log.map((e) => LogModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  allData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.all();
    if (kDebugMode) {
      print(
          "========================================================================$response");
    }
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        child.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController logLevel = TextEditingController();
  TextEditingController logAction = TextEditingController();
  var childId;

  addData() async {
    if (formState.currentState?.validate() == true) {
      statusRequest = StatusRequest.loading;
      var response = await homeData.addLogData(
          logLevel.text,
          logAction.text,
          childId.toString(),
          myServices.sharedPreferences.getString("id").toString());
      if (kDebugMode) {
        print(
            "========================================================================$response");
      }
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          getData();
          Get.forceAppUpdate();
          Get.back();
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, catId) {
    Get.toNamed(AppRoute.itemsView, arguments: {
      "categories": categories,
      "selectedCat": selectedCat,
      "catId": catId,
    });
  }

  goToProductDetails(itemsModel) {
    Get.toNamed(AppRoute.productDetails, arguments: {"itemsModel": itemsModel});
  }
}

class SearchMaxController extends GetxController {
  List<UsersModel> listDataControl = [];
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;
  TextEditingController search = TextEditingController();

  bool isSearch = false;
  final double w = Get.width;
  final int columnCount = 1;

  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    searchData();
    update();
  }

  searchData() async {
    listDataControl.clear();
    statusRequest = StatusRequest.loading;
    var response = await homeData.search(search.text);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List res = response['data'];
        listDataControl.addAll(res.map((e) => UsersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }
}
