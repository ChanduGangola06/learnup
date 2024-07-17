import 'package:learnup/models/favoritegrid_item_model.dart';
import 'package:learnup/models/featured_course_model.dart';

import '../core/app_exports.dart';

class FeaturedCourseController extends GetxController {
  List<FavoritegridItemModel> featuredCourceList =
      FeaturedCourseModel.getFeaturedCource();
}
