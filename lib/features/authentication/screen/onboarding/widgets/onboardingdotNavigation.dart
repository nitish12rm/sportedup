import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class onboardingdotNavigation extends StatelessWidget {
  final controller = OnBoardingController.instance;

   onboardingdotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child:
      SmoothPageIndicator(

      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6),),);
  }
}