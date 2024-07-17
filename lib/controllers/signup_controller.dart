import 'package:flutter/material.dart';

import '../core/app_exports.dart';

class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.clear();
    emailController.clear();
    passwordController.clear();
  }
}
