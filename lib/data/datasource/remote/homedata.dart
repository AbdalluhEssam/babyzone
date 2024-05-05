import '../../../core/class/crud.dart';
import '../../../likeapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homePage, {});
    return response.fold((l) => l, (r) => r);
  }

  getLogData(String id) async {
    var response = await crud.postData(AppLink.log, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }

  all() async {
    var response = await crud.postData(AppLink.all, {});
    return response.fold((l) => l, (r) => r);
  }

  addLogData(
      String logLevel, String logAction, String childId, String usersId) async {
    var response = await crud.postData(AppLink.logAdd, {
      "log_level": logLevel.toString(),
      "log_action": logAction.toString(),
      "child_id": childId.toString(),
      "users_id": usersId.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }

  getDoctorsData() async {
    var response = await crud.postData(AppLink.doctors, {});
    return response.fold((l) => l, (r) => r);
  }

  getNursesData() async {
    var response = await crud.postData(AppLink.nurses, {});
    return response.fold((l) => l, (r) => r);
  }

  search(String search) async {
    var response =
        await crud.postData(AppLink.search, {"search": search.toString()});
    return response.fold((l) => l, (r) => r);
  }

  Future getNotificationData(String usersId) async {
    var response = await crud
        .postData(AppLink.notification, {"user_id": usersId.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
