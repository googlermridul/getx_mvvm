import 'package:getx_mvvm/data/network/network_api_service.dart';
import 'package:getx_mvvm/models/user_list_model.dart';
import 'package:getx_mvvm/res/constants/app_constant.dart';

class HomeRepository {
  final _apiService = NetworkApiService();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppConstants.userListUrl);
    return UserListModel.fromJson(response);
  }

  // add more api in this screen if needed
}
