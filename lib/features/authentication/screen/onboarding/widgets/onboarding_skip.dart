import 'package:sportedup/features/authentication/controllers/onboarding_controller.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:sportedup/utils/constants/image_strings.dart';

import 'package:sportedup/utils/constants/text_strings.dart';

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
          child: Text('Skip'),
        ));
  }
}
