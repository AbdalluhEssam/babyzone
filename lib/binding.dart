import 'package:get/get.dart';
import 'controller/auth/signup_controller.dart';
import 'controller/home/personinformation_controller.dart';
import 'core/class/crud.dart';


class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => PersonInfoControllerImp(), fenix: true);
  }
}
