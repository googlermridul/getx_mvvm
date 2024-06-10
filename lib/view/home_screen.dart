import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/app_button.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: InternetExceptionWidget(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppButton(
              title: "Sign In",
              onPress: () {
                Get.toNamed(RoutesName.loginView);
              },
            ),
            const SizedBox(height: 20),
            AppButton(title: "Sign Up", onPress: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("title");
      }),
    );
  }
}
