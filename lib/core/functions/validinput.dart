import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone";
    }
  }
  if (val.isEmpty) {
    return "can't be Empty";
  }
  if (val.length < min) {
    return "can't be less then $min";
  }
  if (val.length > max) {
    return "can't be larger then $max";
  }
}
