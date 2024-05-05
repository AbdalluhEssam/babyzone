import 'package:get/get.dart';
import '../../core/services/services.dart';
import '../../../core/class/statusrequest.dart';

abstract class PersonInfoController extends GetxController {
  initialData();
  getData();
}

class PersonInfoControllerImp extends PersonInfoController {
  MyServices myServices = Get.find();

  List services = [];
  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  String? username;
  String? id;
  String? email;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    email = myServices.sharedPreferences.getString("email");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    update();
  }
}
