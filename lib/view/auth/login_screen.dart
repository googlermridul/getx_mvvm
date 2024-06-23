import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/app_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginMV = Get.put(LoginController());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginMV.emailController,
                focusNode: loginMV.emailFocusNode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  if (value.isNotEmpty) {
                    Utils.fieldFocusChange(context, loginMV.emailFocusNode, loginMV.passwordFocusNode);
                  }
                },
                decoration: InputDecoration(hintText: "Email"),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: loginMV.passwordController,
                focusNode: loginMV.passwordFocusNode,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(hintText: "Password"),
              ),
              const SizedBox(height: 20),
              Obx(
                () => AppButton(
                  title: "Sign In",
                  isLoading: loginMV.loading.value,
                  onPress: () {
                    if (_formkey.currentState!.validate()) {
                      loginMV.loginApi();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
