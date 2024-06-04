import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/screens/splash_screen.dart';

class AppRoutes {
  static appRoutes() {
    [
      GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), transition: Transition.leftToRight),
      GetPage(name: RoutesName.loginScreen, page: () => const SplashScreen(), transition: Transition.leftToRight),
      GetPage(name: RoutesName.homeScreen, page: () => const SplashScreen(), transition: Transition.leftToRight),
    ];
  }
}
