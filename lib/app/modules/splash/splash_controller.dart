import 'package:get/get.dart';
import 'package:tic_tac_toe/app/routes/app_pages.dart';

class SplashController extends GetxController {
  next() {
    return Future.delayed(
        Duration(seconds: 6), () => Get.offAllNamed(Routes.HOME));
  }

  @override
  void onInit() {
    super.onInit();
    next();
  }
}
