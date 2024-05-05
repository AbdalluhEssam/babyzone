import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/constant/routes.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/color.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/signup.dart';

abstract class SignUpController extends GetxController {
  signUp();

  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  MyServices myServices = Get.find();

  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  SignUpData signupData = SignUpData(Get.find());
  List permission = [];

  bool isShowPassword = true;
  var userApprove;

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          username.text.trimLeft().trimRight(),
          password.text.trimLeft().trimRight(),
          email.text.trimLeft().trimRight(),
          phone.text.trimLeft().trimRight(),
          userApprove.toString(),
          myFile!);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.successSignUp, arguments: {
            "email": email.text.trimLeft().trimRight(),
          });
          Get.snackbar(username.text.toString(), "signupmass".tr,
              icon: const Icon(Icons.account_circle_rounded),
              barBlur: 2,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              backgroundColor: AppColor.primaryColor.withOpacity(0.4),
              isDismissible: true,
              duration: const Duration(seconds: 3),
              colorText: AppColor.black,
              borderRadius: 80);
          myServices.sharedPreferences
              .setString("emailup", email.text.toString());
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await signupData.getData();
    log("========================================================================$response");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        permission.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    getData();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }

  File? myFile;

  imgGlr() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    debugPrint('path: ${image?.path}');

    if (image != null) {
      File? img = File(image.path);
      img = await cropped(imageFile: img);
      myFile = img;
      update();
    } else {
      print("No Image Selected");
    }
    update();
  }

  Future<File?> cropped({required File imageFile}) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      cropStyle: CropStyle.rectangle,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Baby Zone',
            toolbarColor: AppColor.primaryColor,
            toolbarWidgetColor: AppColor.backgroundColor,
            initAspectRatio: CropAspectRatioPreset.ratio16x9,
            activeControlsWidgetColor: AppColor.backgroundColor,
            backgroundColor: AppColor.primaryColor,
            statusBarColor: AppColor.primaryColor,
            showCropGrid: true,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    return File(croppedFile!.path);
  }
}
