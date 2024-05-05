// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:babyzone/controller/home/homescreen_controller.dart';
import 'package:get/get.dart';
import '../../core/constant/apptheme.dart';
import '../../core/constant/routes.dart';
import '../../core/services/services.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();
  late String id;
  bool s = false;
  HomeScreenControllerImp controllerImp = Get.put(HomeScreenControllerImp());
  changeTheme(bool a) {
    if (a == true) {
      s = true;
      ThemeService().changeTheme();
      controllerImp.update();
      update();
    } else {
      s = false;
      ThemeService().changeTheme();
      controllerImp.update();
      update();
    }
  }
  @override
  void onInit() {
    id = myServices.sharedPreferences.getString("id")!;
    super.onInit();
  }

  logout() {
    // FirebaseMessaging.instance.unsubscribeFromTopic("users");
    // FirebaseMessaging.instance.unsubscribeFromTopic("user$id");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
