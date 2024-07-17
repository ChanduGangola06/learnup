import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnup/presentation/home/models/home_screen_model.dart';

import '../presentation/home/models/slider_model.dart';

class HomeController extends GetxController {
  List<SliderData> sliderData = HomeScreenModel.getSliderData();
  HomeController(this.homeScreenModelObj);
  TextEditingController searchController = TextEditingController();
  Rx<HomeScreenModel> homeScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.clear();
  }
}
