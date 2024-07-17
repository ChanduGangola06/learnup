import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learnup/presentation/login/login_screen.dart';

import '../../controllers/onboard_controller.dart';
import '../../core/app_exports.dart';
import '../../models/learningframe_item_model.dart';
import '../../widgets/custom_elevated_button.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  OnboardController onboardController = OnboardController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        closeApp();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: GetBuilder<OnboardController>(
            init: OnboardController(),
            builder: (controller) {
              return Stack(
                children: [
                  PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: (value) {
                      controller.setCurrentPage(value);
                    },
                    itemCount: controller.onboardingData.length,
                    itemBuilder: (context, index) {
                      LearningframeItemModel data =
                          controller.onboardingData[index];
                      return Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(data.image!),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 207.v),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 355.h,
                                margin:
                                    EdgeInsets.only(left: 18.h, right: 14.h),
                                child: Text(
                                  data.title!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      theme.textTheme.headlineMedium!.copyWith(
                                    height: 1.36,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 18.5.h),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    data.subtitle!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.v),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.onboardingData.length,
                            (index) {
                              return AnimatedContainer(
                                margin: EdgeInsets.only(left: 3.h, right: 3.h),
                                duration: const Duration(milliseconds: 300),
                                height: 7.v,
                                width: index == controller.currentPage
                                    ? 16.h
                                    : 7.v,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.h),
                                  color: (index == controller.currentPage)
                                      ? appTheme.buttonColor
                                      : appTheme.buttonColor.withOpacity(0.14),
                                ),
                              );
                            },
                          ),
                        ),
                        CustomElevatedButton(
                          height: 56.v,
                          text: controller.currentPage ==
                                  controller.onboardingData.length - 1
                              ? "Get started"
                              : "Next".tr,
                          onPressed: controller.currentPage ==
                                  controller.onboardingData.length - 1
                              ? () {
                                  PrefUtils.setIsIntro(false);
                                  Get.to(() => LoginScreen());
                                }
                              : () {
                                  controller.pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.bounceIn);
                                },
                          margin: EdgeInsets.only(
                              left: 16.h, top: 32.v, right: 16.h),
                        ),
                        SizedBox(height: 20.v),
                        GestureDetector(
                          onTap: () {
                            PrefUtils.setIsIntro(false);
                            Get.to(() => LoginScreen());
                          },
                          child: Text(
                              controller.currentPage ==
                                      controller.onboardingData.length - 1
                                  ? ""
                                  : "Skip".tr,
                              style: theme.textTheme.bodyLarge),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
