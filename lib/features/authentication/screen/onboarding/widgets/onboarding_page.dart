
import 'package:sportedup/utils/helpers/helper_functions.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class onBoardingPage extends StatelessWidget {

  const onBoardingPage({
    super.key,
    required this.title,required this.image,required this.subtitle
  });
  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth()*.8,
              height: THelperFunctions.screenHeight()*.6,
              image:  AssetImage(image)),
          Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),


        ],
      ),
    );
  }
}