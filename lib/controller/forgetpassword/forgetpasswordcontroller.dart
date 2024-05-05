import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/routes.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/forgetpassword/checkemail.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController email;
  MyServices myServices = Get.find();

  @override
  checkEmail() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.verfiyCodeResetPassword,
              arguments: {"email": email.text});
          myServices.sharedPreferences.setString("email", email.text.toString());

        } else {
          Get.defaultDialog(title: "Warning", middleText: " Email Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
