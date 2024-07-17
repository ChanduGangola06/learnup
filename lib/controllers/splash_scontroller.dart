import 'dart:async';

import 'package:learnup/core/app_exports.dart';
import 'package:learnup/presentation/home/home_screen.dart';
import 'package:learnup/presentation/login/login_screen.dart';
import 'package:learnup/presentation/onboard/onboard_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      print("themedata is ======== ${PrefUtils().getThemeData()}");
      _getIsFirst();
    });
  }

  _getIsFirst() async {
    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils.getIsIntro();
    Timer(const Duration(seconds: 3), () {
      print("is intro ====== $isIntro");
      print("isSignIn ====== $isSignIn");
      if (isIntro) {
        Get.to(() => OnboardScreen());
      } else if (isSignIn) {
        Get.to(() => LoginScreen());
      } else {
        Get.to(() => HomeScreen());
      }
    });
  }
}
