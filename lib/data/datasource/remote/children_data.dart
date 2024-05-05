import '../../../core/class/crud.dart';
import '../../../likeapi.dart';

class ChildrenData {
  Crud crud;

  ChildrenData(this.crud);

  getData(id) async {
    var response =
        await crud.postData(AppLink.children, {"dad_id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }

  listData(id) async {
    var response =
        await crud.postData(AppLink.childrenList, {"dad_id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }


  onlyData(id) async {
    var response =
        await crud.postData(AppLink.childrenOnly, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
