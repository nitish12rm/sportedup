import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: const Text('Skip'),
        ));
  }
}
