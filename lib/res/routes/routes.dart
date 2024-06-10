import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/auth/login_view.dart';
import 'package:getx_mvvm/view/home_screen.dart';

class AppRoutes {
  static appRoutes() {
    return [
      // GetPage(name: '/', page: () => const SplashScreen(), transition: Transition.leftToRight),
      GetPage(name: RoutesName.loginView, page: () => const LoginView(), transition: Transition.leftToRight),
      GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), transition: Transition.leftToRight),
    ];
  }
}
