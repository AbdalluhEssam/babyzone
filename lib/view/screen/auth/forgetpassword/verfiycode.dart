import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/functions/translatedordatabase.dart';
import '../../../../controller/forgetpassword/verfiycodecontroller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/icon_broken.dart';
import '../../../../core/constant/imageassets.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerfiyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Text(
            "verification".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
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
        body: GetBuilder<VerfiyCodeControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: ListView(
                      children: [
                        Image.asset(
                          AppImageAssets.mail,
                          height: 250,
                        ),
                        CustomTextTitleAuth(title: "checkcode".tr),
                        CustomTextBodyAuth(
                          textBody: translateDataBase(
                              'الرجاء إدخال الرمز المكون من 4 أرقام المرسل إليه\n ${controller.email}',
                              'Please Enter The 4 Digit Code Sent To\n${controller.email}'),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        OtpTextField(
                          cursorColor: AppColor.primaryColor,
                          fieldWidth: 40,
                          borderRadius: BorderRadius.circular(10),
                          numberOfFields: 4,
                          borderColor: AppColor.primaryColor,
                          // showFieldAsBox: true,
                          filled: true,
                          fillColor: AppColor.gray800,

                          disabledBorderColor: AppColor.red,
                          enabledBorderColor: AppColor.primaryColor,
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verfiyCodeResetPass) {
                            controller.goToResetPassword(verfiyCodeResetPass);
                          }, // end onSubmit
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          "Resend Code",
                          style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor),
                        )
                      ],
                    ),
                  ),
                )));
  }
}
