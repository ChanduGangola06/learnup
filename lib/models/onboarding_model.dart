import '../core/utils/image_constant.dart';
import 'learningframe_item_model.dart';

class OnboardingModel {
  static List<LearningframeItemModel> getOnboardingData() {
    return [
      LearningframeItemModel(
          ImageConstant.imgOnboarding1,
          "Learn new skills and advance your career with learning",
          "Electronic learning, is the delivery of learning and training through digital resources."),
      LearningframeItemModel(
          ImageConstant.imgOnboarding2,
          "The most convenient and effective way to learn.",
          "Electronic learning, is the delivery of learning and training through digital resources."),
      LearningframeItemModel(
          ImageConstant.imgOnboarding3,
          "Learn at your own time, with digital learning.",
          "Electronic learning, is the delivery of learning and training through digital resources."),
    ];
  }
}
