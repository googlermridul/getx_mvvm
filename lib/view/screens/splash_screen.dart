import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/widgets/internet_exception_widget.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InternetExceptionWidget(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("title");
      }),
    );
  }
}
