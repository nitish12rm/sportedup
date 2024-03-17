import 'package:flutter/material.dart';
import 'package:sportedup/common/layout/gridlayout.dart';
import 'package:sportedup/common/widgets/product_cards/product_cartd_vertical.dart';
import 'package:sportedup/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
physics: const NeverScrollableScrollPhysics(),
children: [Padding(
  padding: const EdgeInsets.all(TSizes.defaultSpace),
  child: Column(
    children: [
      ///Brands
      const TBrandShowCase(
        images: [
          TImages.productImage1,
          TImages.productImage2,
          TImages.productImage3
        ],
      ),
      ///Products
      const TSectionHeading(title: 'You might like'),
      const SizedBox(height: TSizes.spaceBtwItems,),
      TGridLayout(itemCount: 4, itemBuilder: (_,index){
        return const TProductCardVertical();
      })
    ],
  ),
),]
    );
  }
}
