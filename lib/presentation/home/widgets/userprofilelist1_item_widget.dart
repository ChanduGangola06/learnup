import 'package:flutter/material.dart';
import 'package:learnup/controllers/home_controller.dart';
import 'package:learnup/presentation/home/models/userprofilelist1_item_model.dart';

import '../../../core/app_exports.dart';

class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 173.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser39x39,
            height: 39.adaptSize,
            width: 39.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofilelist1ItemModelObj.userName!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    userprofilelist1ItemModelObj.userRole!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
