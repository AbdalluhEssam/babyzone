import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    // await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  String formatNumber(val){
    return NumberFormat.currency(locale: "en_US",decimalDigits: 1, symbol: "").format(double.parse(val ?? 0));
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
