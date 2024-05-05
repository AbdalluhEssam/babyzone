import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/forgetpassword/successresetpassword_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "successsignup".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.gray),
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
              textBody: "successsignup".tr,
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
