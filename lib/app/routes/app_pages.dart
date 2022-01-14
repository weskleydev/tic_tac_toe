import 'package:get/get.dart';

import 'package:tic_tac_toe/app/modules/home/home_binding.dart';
import 'package:tic_tac_toe/app/modules/home/home_view.dart';
import 'package:tic_tac_toe/app/modules/splash/splash_binding.dart';
import 'package:tic_tac_toe/app/modules/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
