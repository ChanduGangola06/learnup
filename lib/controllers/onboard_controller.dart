import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/learningframe_item_model.dart';
import '../models/onboarding_model.dart';

class OnboardController extends GetxController {
  List<LearningframeItemModel> onboardingData =
      OnboardingModel.getOnboardingData();

  PageController pageController = PageController();
  Rx<int> sliderIndex = 0.obs;
  int currentPage = 0;

  void setCurrentPage(int value) {
    currentPage = value;
    update();
  }
}
