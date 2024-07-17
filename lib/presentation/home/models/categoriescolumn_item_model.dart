import 'package:learnup/core/app_exports.dart';

class CategoriescolumnItemModel {
  CategoriescolumnItemModel({
    this.catDesigning,
    this.designingText,
    this.id,
  }) {
    catDesigning = catDesigning ?? Rx(ImageConstant.imgCatDesigining);
    designingText = designingText ?? Rx("Designing");
    id = id ?? Rx("");
  }

  Rx<String>? catDesigning;

  Rx<String>? designingText;

  Rx<String>? id;
}
