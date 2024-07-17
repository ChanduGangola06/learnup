import 'package:flutter/material.dart';
import 'package:learnup/controllers/splash_scontroller.dart';

import '../../core/app_exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.bgColor,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 89.v,
                width: 104.h,
              ),
              SizedBox(height: 20.v),
              Text("LearnUp".tr, style: theme.textTheme.headlineMedium),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }
}
