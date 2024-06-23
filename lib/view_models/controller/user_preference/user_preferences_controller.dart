import 'package:getx_mvvm/models/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  Future<bool> saveUser(LoginResponseModel response) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', response.token.toString());
    await prefs.setBool('isLogin', response.isLogin!);
    return true;
  }

  Future<LoginResponseModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    bool? isLogin = prefs.getBool('isLogin');
    return LoginResponseModel(
      token: token,
      isLogin: isLogin,
    );
  }

  Future<bool> removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }
}
