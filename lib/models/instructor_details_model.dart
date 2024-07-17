import 'package:learnup/core/app_exports.dart';
import 'package:learnup/models/userprofile1_item_model.dart';

class InstructorDetailsModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        image: ImageConstant.imgGroupIndianCh114x114.obs,
        learnNewSkills: "Learn new skills, advance your career".obs,
        favorite: ImageConstant.imgFavoriteOnprimary.obs,
        alreadyHaveAn: "Ronald richards".obs,
        alreadyHaveAn1: "Instructor".obs,
        price: "65.00".obs),
    Userprofile1ItemModel(
        image: ImageConstant.imgGroupIndianCh5.obs,
        learnNewSkills: "Learn from the best, anywhere in the world".obs,
        favorite: ImageConstant.imgFavorite28x28.obs,
        alreadyHaveAn: "Ronald richards".obs,
        alreadyHaveAn1: "Instructor".obs,
        price: "80.00".obs)
  ]);
}
