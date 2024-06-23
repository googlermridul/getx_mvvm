import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login_response_model.dart';
import 'package:getx_mvvm/repositories/login_repo.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preferences_controller.dart';

class LoginController extends GetxController {
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final TextEditingController emailController = TextEditingController().obs();
  final TextEditingController passwordController = TextEditingController().obs();
  final FocusNode emailFocusNode = FocusNode().obs();
  final FocusNode passwordFocusNode = FocusNode().obs();

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailController.text,
      "password": passwordController.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value["error"] == "user not found") {
        Utils.snackBar("Failed", value["error"].toString());
      } else {
        LoginResponseModel data = LoginResponseModel(
          token: value["token"],
          isLogin: true,
        );
        userPreference.saveUser(data).then((value) {
          Get.delete<LoginController>();
          Get.toNamed(RoutesName.homeScreen);
          Utils.snackBar("Successful", "Logged in successfully");
        });
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar("Error", error.toString());
    });
  }
}
