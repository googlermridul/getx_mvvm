import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final TextEditingController emailController = TextEditingController().obs();
  final TextEditingController passwordController = TextEditingController().obs();

  final FocusNode emailFocusNode = FocusNode().obs();
  final FocusNode passwordFocusNode = FocusNode().obs();
}
