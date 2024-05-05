import 'package:get/get.dart';
import 'package:babyzone/core/services/services.dart';

translateDataBase(ar,en,[langCode]){
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "ar"){
    return ar;
  }else{
    return en;

  }
}