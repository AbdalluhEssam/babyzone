import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/constant/icon_broken.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertextiapp.dart';
import '../../../core/functions/translatedordatabase.dart';
import '../../../core/functions/validinput.dart';
import '../../Constant.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const BabyZoneText(),
          centerTitle: true,
          elevation: 0,
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LoginControllerImp>(
                builder: (controller) => HandlingDataRequest(
                    statusRequest: controller.statusRequest,
                    widget: Form(
                      key: controller.formState,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const ImageLogoApp(),
                            const BigSpace(),
                            Text("Welcon to BABY ZONE".tr,
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomFormAuth(
                              isNamber: false,
                              valid: (val) {
                                return validInput(val!, 5, 100, "email");
                              },
                              onChanged: (val) {
                                controller.formState.currentState!.validate();
                                return null;

                                // return  EmailValidator.validate(controller.email.text);
                              },
                              mycontroller: controller.email,
                              label: "email".tr,
                              hinttext: "Enter your email address",
                              iconData: IconBroken.Message,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            GetBuilder<LoginControllerImp>(
                              builder: (controller) => CustomFormAuth(
                                isNamber: false,
                                onTap: () {
                                  controller.showPassword();
                                },
                                obscureText: controller.isShowPassword,
                                valid: (val) {
                                  return validInput(val!, 5, 40, "password");
                                },
                                onChanged: (val) {
                                  controller.formState.currentState!.validate();
                                  return null;

                                  // return  EmailValidator.validate(controller.email.text);
                                },
                                mycontroller: controller.password,
                                label: "password".tr,
                                hinttext: "Enter your password".tr,
                                iconData: IconBroken.Lock,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: controller.isChecked,
                                      activeColor: babyZoneColor,
                                      onChanged: (newBool) {
                                        controller.isChecked = newBool;
                                        controller.update();
                                      },
                                    ),
                                    const Text("Remember me",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13)),
                                  ],
                                ),
                                TextButton(
                                  style: const ButtonStyle(
                                      overlayColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  onPressed: () {
                                    controller.goToForgetPassword();
                                  },
                                  child: const Text("Forget Password",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: babyZoneColor,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            ),
                            CustomButtonAuth(
                                text: "signin".tr,
                                onPressed: () {
                                  controller.login();
                                }),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 1,
                                    width: 110,
                                    color: AppColor.primaryColor,
                                  ),
                                  Text("OrContinueWith".tr,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Cairo",
                                          color: AppColor.primaryColor)),
                                  Container(
                                    height: 1,
                                    width: 110,
                                    color: AppColor.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButtonAuthIcons(
                                    onPressed: () {
                                      Get.snackbar(
                                          "Soon!",
                                          translateDataBase(
                                              "سوف يتم اضافة هذه الميزه قريبا",
                                              "This feature will be added soon"),
                                          icon: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                IconBroken.Profile,
                                                color: AppColor.white,
                                                size: 30,
                                              )),
                                          snackPosition: SnackPosition.TOP,
                                          margin: EdgeInsets.zero,
                                          backgroundColor:
                                              AppColor.primaryColor,
                                          duration: const Duration(seconds: 2),
                                          colorText: AppColor.white,
                                          barBlur: 0,
                                          borderRadius: 0);
                                    },
                                    iconData: FontAwesome.facebook),
                                CustomButtonAuthIcons(
                                    onPressed: () {},
                                    iconData: FontAwesome.google),
                                CustomButtonAuthIcons(
                                    onPressed: () {},
                                    iconData: FontAwesome.linkedin)
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextSignUpOrIn(
                              text1: "have".tr,
                              text2: "signup".tr,
                              onTap: () {
                                controller.goToSignUp();
                              },
                            ),
                          ],
                        ),
                      ),
                    )))));
  }
}
