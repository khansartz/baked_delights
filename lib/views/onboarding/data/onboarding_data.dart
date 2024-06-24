import '../../../core/constants/app_images.dart';
import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages.onboarding1,
      headline: 'Browse all the categorys',
      description:
          'Enjoy hassle-free shopping',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          'Your satisfaction is our top priority',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description:
          'Enjoy fast and reliable delivery',
    ),
  ];
}
