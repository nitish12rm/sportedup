import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? TColors.primary : TColors.black),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onPressed: () {
            OnBoardingController.instance.nextpage();
          },
        ));
  }
}
