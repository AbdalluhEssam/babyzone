import '../../../../core/class/crud.dart';
import '../../../../likeapi.dart';


class VerfiyCodeSignUp {
  Crud crud;
  VerfiyCodeSignUp(this.crud);
  postData(String email, String verfiyCode) async {
    var response = await crud.postData(AppLink.verfiyCodeSignUp, {
      "email": email,
      "verfiycode": verfiyCode,
    });
    return response.fold((l) => l, (r) => r);
  }

  reSendData(String email) async {
    var response = await crud.postData(AppLink.reSend, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
