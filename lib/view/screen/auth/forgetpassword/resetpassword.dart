import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/functions/translatedordatabase.dart';
import '../../../../controller/forgetpassword/resetpasswordcontroller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/icon_broken.dart';
import '../../../../core/constant/imageassets.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Text(
            "reset".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ,
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
        body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          Image.asset(AppImageAssets.resetPassword,height: 280,),

                          CustomTextTitleAuth(title: "newpass".tr),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextBodyAuth(
                            textBody: translateDataBase('يجب أن تكون كلمة المرور الجديدة مختلفة عن كلمة المرور المستخدمة سابقًا.', 'Your new password must be different from previously used password.'),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CustomFormAuth(
                            color: AppColor.gray800,
                            isNamber: false,

                            valid: (val) {
                              return validInput(val!, 6, 40, "password");
                            },
                            mycontroller: controller.password,
                            label: "password".tr,
                            hinttext: "hintpass".tr,
                            iconData: IconBroken.Lock,
                            // mycontroller: ,
                          ),
                          const SizedBox(height: 15,),
                          CustomFormAuth(
                            isNamber: false,
                            color: AppColor.gray800,

                            valid: (val) {
                              return validInput(val!, 6, 40, "password");
                            },
                            mycontroller: controller.repassword,
                            label: "repassword".tr,
                            hinttext: "rehintpass".tr,
                            iconData: IconBroken.Lock,
                            // mycontroller: ,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButtonAuth(
                              text: "save".tr,
                              onPressed: () {
                                controller.goToSuccessResetPassword();
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
