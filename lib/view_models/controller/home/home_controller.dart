import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/api_response.dart';
import 'package:getx_mvvm/models/user_list_model.dart';
import 'package:getx_mvvm/repositories/home_repo.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();

  final requestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = "".obs;

  void setRequestStatus(Status value) => requestStatus.value = value;
  void setUserList(UserListModel value) => userList.value = value;
  void setError(String value) => error.value = value;

  void userListApi() {
    // setRequestStatus(Status.LOADING); // it causes error
    _api.userListApi().then((value) {
      setRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRequestStatus(Status.ERROR);
    });
  }

  // refresh
  void refreshApi() {
    setRequestStatus(Status.LOADING);
    _api.userListApi().then((value) {
      setRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRequestStatus(Status.ERROR);
    });
  }
}
