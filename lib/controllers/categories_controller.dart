import 'package:get/get.dart';
import 'package:learnup/models/categories_model.dart';
import 'package:learnup/models/categoriesgrid_item_model.dart';

class CategoriesController extends GetxController {
  List<CategoriesgridItemModel> categories =
      CategoriesModel.getCategoriesData();
}
