import 'package:getx_mvvm/data/network/network_api_service.dart';
import 'package:getx_mvvm/res/constants/app_constant.dart';

class LoginRepository {
  final _apiService = NetworkApiService();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppConstants.loginUrl);
    return response;
  }
}
