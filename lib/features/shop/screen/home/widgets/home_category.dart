import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:TSizes.defaultSpace),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return  TVerticalImageText(title: 'Shoes',image: TImages.shoeIcon,onTap: (){},);
            }),
      ),
    );
  }
}

