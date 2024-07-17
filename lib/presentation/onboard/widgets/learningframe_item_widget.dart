import 'package:flutter/material.dart';

import '../../../controllers/onboard_controller.dart';
import '../../../core/app_exports.dart';
import '../../../models/learningframe_item_model.dart';

class LearningframeItemWidget extends StatelessWidget {
  LearningframeItemWidget(
    this.learningframe1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LearningframeItemModel learningframe1ItemModelObj;

  var controller = Get.find<OnboardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 355.h,
          margin: EdgeInsets.only(
            left: 18.h,
            right: 14.h,
          ),
          child: Text(
            "msg_learn_at_your_own".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium!.copyWith(
              height: 1.36,
            ),
          ),
        ),
        SizedBox(height: 15.v),
        SizedBox(
          width: 388.h,
          child: Text(
            "msg_elearning_or_electronic".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge!.copyWith(
              height: 1.50,
            ),
          ),
        ),
      ],
    );
  }
}
