import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/services/services.dart';

abstract class ServicesHomeController extends GetxController {
  initialData();
  getData();
}

class ServicesHomeControllerImp extends ServicesHomeController {
  MyServices myServices = Get.find();

  List services = [];
  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  String? username;
  String? nameServices;
  String? imageServices;
  int? idUser;
  int? idServices;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    idUser = myServices.sharedPreferences.getInt("id");
  }

  @override
  void onInit() {
    idServices = Get.arguments['id'];
    nameServices = Get.arguments['name'];
    imageServices = Get.arguments['image'];
    getData();
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    update();
  }
}
