import 'package:flutter/material.dart';
import 'package:learnup/controllers/home_controller.dart';
import 'package:learnup/presentation/home/models/categoriescolumn_item_model.dart';
import 'package:learnup/widgets/custom_icon_button.dart';

import '../../../core/app_exports.dart';

class CategoriesColumnItemWidget extends StatelessWidget {
  CategoriesColumnItemWidget(this.categoriescolumnItemModelObj, {super.key});

  CategoriescolumnItemModel categoriescolumnItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 87.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              child: CustomImageView(
                imagePath: categoriescolumnItemModelObj.catDesigning!.value,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              categoriescolumnItemModelObj.designingText!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
