import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboarding_page.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboarding_skip.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboardingdotNavigation.dart';
import 'package:sportedup/utils/constants/image_strings.dart';

import 'package:sportedup/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                  title: TTexts.onBoardingTitle1,
                  image: TImages.onBoardingImage1,
                  subtitle: TTexts.onBoardingSubTitle1),
              onBoardingPage(
                  title: TTexts.onBoardingTitle2,
                  image: TImages.onBoardingImage2,
                  subtitle: TTexts.onBoardingSubTitle2),
              onBoardingPage(
                  title: TTexts.onBoardingTitle3,
                  image: TImages.onBoardingImage3,
                  subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),

          ///Skip button
          const onBoardingSkip(),

          ///Dot navigator smooth page indicator
          onboardingdotNavigation(),

          ///Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}




