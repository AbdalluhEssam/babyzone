import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/constant/icon_broken.dart';
import 'package:babyzone/core/constant/imageassets.dart';
import 'package:babyzone/core/functions/translatedordatabase.dart';
import '../../../../controller/forgetpassword/forgetpasswordcontroller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Text(translateDataBase('هل نسيت كلمة السر', 'Forgot Password'),
              style: Theme.of(context).textTheme.displayLarge),
          elevation: 0,
          centerTitle: true,
          leadingWidth: 50,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: AppColor.secondColor,
              radius: 20,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(IconBroken.Arrow___Left_2)),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButtonAuth(
              text: "check".tr,
              onPressed: () {
                controller.checkEmail();
              }),
        ),
        body: GetBuilder<ForgetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          Image.asset(AppImageAssets.forgetPassword,height: 240,),
                          CustomTextTitleAuth(title: "check".tr),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextBodyAuth(
                            textBody: translateDataBase(
                                'الرجاء إدخال عنوان البريد الإلكتروني الخاص بك للحصول على رمز التحقق.',
                                'Please Enter Your Email Address To Receive a Verification Code.'),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CustomFormAuth(
                            color: AppColor.gray800,
                            isNamber: false,
                            valid: (val) {
                              return validInput(val!, 5, 40, "email");
                            },
                            mycontroller: controller.email,
                            label: "email".tr,
                            hinttext: "hintemail".tr,
                            iconData: Icons.email_outlined,
                            // mycontroller: ,
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
