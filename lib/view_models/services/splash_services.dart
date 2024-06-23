import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preferences_controller.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token != null) {
        Get.toNamed(RoutesName.homeScreen);
      } else {
        Timer(const Duration(seconds: 2), () {
          Get.toNamed(RoutesName.loginView);
        });
      }
    });
  }
}
