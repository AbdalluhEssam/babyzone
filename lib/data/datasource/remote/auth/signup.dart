import 'dart:io';

import '../../../../core/class/crud.dart';
import '../../../../likeapi.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);

  getData() async {
    var response = await crud.postData(
      AppLink.viewPermission,
      {},
    );
    return response.fold((l) => l, (r) => r);
  }

  postData(String username, String password, String email, String phone, String userApprove,
      File image) async {
    var response = await crud.postRequestWithImage(
        AppLink.signUp,
        {
          "username": username,
          "password": password,
          "email": email,
          "phone": phone,
          "users_approve": userApprove,
        },
        image,
        "file");
    return response;
  }
}
