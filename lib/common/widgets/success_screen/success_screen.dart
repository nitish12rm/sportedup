import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sportedup/common/styles/spacing_style.dart';

import '../../../features/authentication/screen/login/login.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
  final String image,title,subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(children: [
            ///IMAGE
            Image(image: AssetImage(image),width: THelperFunctions.screenWidth()*0.6,),
            SizedBox(height: TSizes.spaceBtwSections,),
            ///TITLE AND SUBTITLE
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwSections,),

            ///BUTTONS
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: Text(TTexts.tContinue)),),

          ],),
        ),
      ),
    );
  }
}
