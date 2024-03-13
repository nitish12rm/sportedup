import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/container/rounded_container.dart';
import 'package:sportedup/common/image/rounded_image.dart';
import 'package:sportedup/common/styles/shadows.dart';
import 'package:sportedup/common/widgets/texts/product_title.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

import '../../icon/circular_icon.dart';
import '../texts/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail, wishlist button, Discount tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// Thumbnail image
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

                  ///Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///Favourite icon button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
      SizedBox(height: TSizes.spaceBtwItems/2,),
            ///detail
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Shoes',smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems/2,),
                  Row(
                    children: [
                      Text('Nike',style: Theme.of(context).textTheme.labelMedium,maxLines: 1,overflow: TextOverflow.ellipsis,),
                      SizedBox(width: TSizes.xs,),
                      Icon(Iconsax.verify5,color: TColors.primary,size: TSizes.iconXs,)

                    ],
                  ),
                ],
              ),
            ),
            ///we used spacer  just to have a constant card size if we have max lines of one or two
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                Padding(
                  padding: const EdgeInsets.only(left:TSizes.sm),
                  child: ProductPriceText(price: '35',),
                ),
                Container(
                  decoration: BoxDecoration(color: TColors.dark,borderRadius: BorderRadius.only(topLeft: Radius.circular(TSizes.cardRadiusMd),bottomRight: Radius.circular(TSizes.cardRadiusMd))),
                  child: SizedBox(
                    width: TSizes.iconLg*1.2,
                    height: TSizes.iconLg*1.2,
                    child: Center(child: Icon(Iconsax.add,color: TColors.white,),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

