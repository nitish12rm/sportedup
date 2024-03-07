import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border:Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child:IconButton(onPressed: (){}, icon: Image(width: TSizes.md,height: TSizes.md,image: AssetImage(TImages.google))) ,
        ),
        SizedBox(width: TSizes.spaceBtwSections,),
        Container(
          decoration: BoxDecoration(border:Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child:IconButton(onPressed: (){}, icon: Image(width: TSizes.md,height: TSizes.md,image: AssetImage(TImages.facebook))) ,
        ),

      ],
    );
  }
}