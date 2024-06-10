import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    splashServices.isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor.withOpacity(.4),
      body: const Center(
        child: Text("Welcome Back"),
      ),
    );
  }
}
