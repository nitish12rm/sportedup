import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboarding_page.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboarding_skip.dart';
import 'package:sportedup/features/authentication/screen/onboarding/widgets/onboardingdotNavigation.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';

import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

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
            children: [
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
          onBoardingSkip(),

          ///Dot navigator smooth page indicator
          onboardingdotNavigation(),

          ///Circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}




