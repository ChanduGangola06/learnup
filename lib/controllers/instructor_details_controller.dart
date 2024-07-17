import 'package:learnup/models/instructor_details_model.dart';

import '../core/app_exports.dart';

class InstructorDetailsController extends GetxController {
  Rx<InstructorDetailsModel> instructorDetailsModelObj =
      InstructorDetailsModel().obs;
}
