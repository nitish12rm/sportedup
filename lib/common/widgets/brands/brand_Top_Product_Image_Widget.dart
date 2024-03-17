import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../container/rounded_container.dart';
Widget brandTopProductImageWidget(String image,BuildContext context) {
  return Expanded(
    child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      child: Image(image: AssetImage(image)),
    ),
  );
}
