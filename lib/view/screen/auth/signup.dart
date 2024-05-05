import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/icon_broken.dart';
import '../../../core/functions/alertextiapp.dart';
import '../../../core/functions/validinput.dart';
import '../../Constant.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const BabyZoneText(),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child: WillPopScope(
                onWillPop: alertExitApp,
                child: GetBuilder<SignUpControllerImp>(
                    builder: (controller) => HandlingDataRequest(
                          statusRequest: controller.statusRequest,
                          widget: Form(
                            key: controller.formState,
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GetBuilder<SignUpControllerImp>(
                                    builder: (controller) => InkWell(
                                      onTap: () {
                                        controller.imgGlr();
                                        controller.update();
                                      },
                                      child: Container(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle,
                                        ),
                                        width: 150,
                                        height: 150,
                                        child: Center(
                                          child: controller.myFile == null
                                              ? const Icon(IconBroken.Image_2)
                                              : Image.file(
                                                  controller.myFile!,
                                                  fit: BoxFit.cover,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const BigSpace(),
                                  Text("Sign Up",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("Welcome onboard with us!",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  CustomFormAuth(
                                    isNamber: false,

                                    valid: (val) {
                                      return validInput(
                                          val!, 5, 100, "Username");
                                    },
                                    onChanged: (val) {
                                      controller.formState.currentState!
                                          .validate();
                                      return null;

                                      // return  EmailValidator.validate(controller.email.text);
                                    },
                                    mycontroller: controller.username,
                                    label: "Username",
                                    hinttext: "Enter your username",
                                    iconData: Icons.person,
                                    // mycontroller: ,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  CustomFormAuth(
                                    isNamber: false,
                                    valid: (val) {
                                      return validInput(val!, 5, 100, "email");
                                    },
                                    onChanged: (val) {
                                      controller.formState.currentState!
                                          .validate();
                                      return null;

                                      // return  EmailValidator.validate(controller.email.text);
                                    },
                                    mycontroller: controller.email,
                                    label: "Email",
                                    hinttext: "Enter your email address",
                                    iconData: Icons.email_outlined,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  CustomFormAuth(
                                    isNamber: false,
                                    valid: (val) {
                                      return validInput(val!, 5, 100, "phone");
                                    },
                                    onChanged: (val) {
                                      controller.formState.currentState!
                                          .validate();
                                      return null;

                                      // return  EmailValidator.validate(controller.email.text);
                                    },
                                    mycontroller: controller.phone,
                                    label: "phone",
                                    hinttext: "Enter your phone",
                                    iconData: Icons.call,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  GetBuilder<SignUpControllerImp>(
                                    builder: (controller) => CustomFormAuth(
                                      isNamber: false,
                                      onTap: () {
                                        controller.showPassword();
                                      },
                                      obscureText: controller.isShowPassword,
                                      onChanged: (val) {
                                        controller.formState.currentState!
                                            .validate();
                                        return null;

                                        // return  EmailValidator.validate(controller.email.text);
                                      },
                                      valid: (val) {
                                        return validInput(
                                            val!, 5, 40, "password");
                                      },
                                      mycontroller: controller.password,
                                      label: "password".tr,
                                      hinttext: "Enter your password".tr,
                                      iconData: IconBroken.Lock,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  GetBuilder<SignUpControllerImp>(
                                      init: SignUpControllerImp(),
                                      builder: (controllerImp) =>
                                          DropdownButton(
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: AppColor.primaryColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            isExpanded: true,
                                            alignment:
                                                AlignmentDirectional.centerEnd,
                                            hint: const Text(
                                              "اختار صلاحيتك",
                                              style: TextStyle(
                                                color: AppColor.primaryColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.end,
                                            ),
                                            items: List.generate(
                                                    controllerImp
                                                        .permission.length,
                                                    (index) => controllerImp
                                                        .permission[index])
                                                .map((e) => DropdownMenuItem(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .centerEnd,
                                                      value: e['id'].toString(),
                                                      onTap: () {
                                                        // percentage = e['percentage'];
                                                      },
                                                      child: Text(
                                                        e['name'].toString(),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ))
                                                .toList(),
                                            onChanged: (val) {
                                              controller.userApprove =
                                                  val.toString();
                                              controller.update();

                                              controllerImp.update();
                                            },
                                            value: controller.userApprove,
                                          )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  CustomButtonAuth(
                                      text: "signup".tr,
                                      onPressed: () {
                                        controller.signUp();
                                      }),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextSignUpOrIn(
                                    text1: "youhave".tr,
                                    text2: "signin".tr,
                                    onTap: () {
                                      controller.goToSignIn();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )))));
  }
}
