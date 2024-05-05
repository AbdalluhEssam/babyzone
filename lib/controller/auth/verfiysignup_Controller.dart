import 'package:get/get.dart';
import '../../core/constant/routes.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/verfiycodesignup.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkEmail();
  reSend();

  goToSuccessSingUp(String verfiyCodeSignUpe);
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  VerfiyCodeSignUp verfiyCodeSignUp = VerfiyCodeSignUp(Get.find());

  String? email;

  StatusRequest statusRequest = StatusRequest.none;

  @override
  goToSuccessSingUp(String verfiyCodeSignUpe) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUp.postData(email!, verfiyCodeSignUpe);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);

      }
    } else {
      Get.defaultDialog(
          title: "Warning", middleText: "Verfiy Code Not Correct");
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  checkEmail() {}

  @override
  reSend(){
    verfiyCodeSignUp.reSendData(email!);
  }
}
