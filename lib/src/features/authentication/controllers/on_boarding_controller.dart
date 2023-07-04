import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';
class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: thisOnBoardingImage1,
        title: thisOnboardingHeading1,
        subTitle: thisOnboardingText1,
        counterText: thisOnboardingCounter1,
        bgColor: thisOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: thisOnBoardingImage2,
        title: thisOnboardingHeading2,
        subTitle: thisOnboardingText2,
        counterText: thisOnboardingCounter2,
        bgColor: thisOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: thisOnBoardingImage3,
        title: thisOnboardingHeading3,
        subTitle: thisOnboardingText3,
        counterText: thisOnboardingCounter3,
        bgColor: thisOnBoardingPage3Color,
      ),
    )
  ];

  onPageChangeCallback(int activePageIndex) {
    currentPage.value= activePageIndex;
  }
  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1 ;
    controller.animateToPage(page: nextPage);
  }
}
