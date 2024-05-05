import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/successsignup_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/icon_broken.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text("successresetpass".tr,
            style: Theme.of(context).textTheme.headline1!),
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
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.primaryColor,
            )),
            CustomTextTitleAuth(title: "congratulations".tr),
            CustomTextBodyAuth(
              textBody: "successresetpass".tr,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "gotologin".tr,
                onPressed: () {
                  controller.goToPageLogin();
                },
              ),
            ),
            const SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
