import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/constant/icon_broken.dart';
import 'package:babyzone/data/model/users_model.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../core/functions/translatedordatabase.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  Map user ={};
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool? isChecked = false;

  late TextEditingController email;
  late TextEditingController password;
  late UserModel userModel;
  StatusRequest statusRequest = StatusRequest.none;

  bool isShowPassword = true;
  MyServices myServices = Get.find();

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }
  loginFacebook()  {
      // await FacebookAuth.instance.login(
      //   permissions: ["public_profile","email"]).then((value) => FacebookAuth.instance.getUserData().then((userData) async{
      //     user = userData;
      // }));
      // // await FacebookAuth.instance.webAndDesktopInitialize(
      // //   appId: "1082283402438136",
      // //   cookie: true,
      // //   xfbml: true,
      // //   version: "v15.0",
      // // );

  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(password.text.trim(), email.text.trimLeft().trimRight());
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          if(response['data']['users_approve'] != "0"){

            userModel = UserModel.fromJson(response['data']);
            myServices.sharedPreferences.setString("id", response['data']['users_id'].toString());
            myServices.sharedPreferences.setString("approve", response['data']['users_approve'].toString());
            myServices.sharedPreferences.setString("username", response['data']['users_name']);
            myServices.sharedPreferences.setString("password", password.text);
            myServices.sharedPreferences.setString("email", response['data']['users_email']);
            myServices.sharedPreferences.setString("image", response['data']['image']);
            myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
            myServices.sharedPreferences.setString("approveName", response['data']['name']);
            myServices.sharedPreferences.setString("step", "2");
            Get.offNamed(AppRoute.homeScreen);
            Get.snackbar("${myServices.sharedPreferences.getString("username")} ",
                translateDataBase("شكرا لك على انضمامك الى Baby Zone", "Thank you for joining Baby Zone"),
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconBroken.Profile,
                      color: AppColor.white,
                      size: 30,
                    )),
                snackPosition: SnackPosition.TOP,
                margin: EdgeInsets.zero,
                backgroundColor: AppColor.primaryColor,
                duration: const Duration(seconds: 2),
                colorText: AppColor.white,
                barBlur: 0,
                borderRadius: 0);
          }else{
            Get.offNamed(AppRoute.verfiyCodeSignUp,arguments: {
              "email":email.text,

            });

          }
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: " Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    userModel =UserModel();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
