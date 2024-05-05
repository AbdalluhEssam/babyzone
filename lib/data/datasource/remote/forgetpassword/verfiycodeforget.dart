import '../../../../core/class/crud.dart';
import '../../../../likeapi.dart';

class VerfiyCodeForgetPasswordData {
  Crud crud;
  VerfiyCodeForgetPasswordData(this.crud);
  postData(String email, String verfiyCode) async {
    var response = await crud.postData(AppLink.verfiyCodeForgetPass, {
      "email": email,
      "verfiycode": verfiyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
