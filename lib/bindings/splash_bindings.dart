import 'package:get/get.dart';
import 'package:learnup/controllers/splash_scontroller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
