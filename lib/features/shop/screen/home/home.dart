import 'package:flutter/material.dart';
import 'package:sportedup/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:sportedup/features/shop/screen/home/widgets/home_category.dart';
import 'package:sportedup/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';

import '../../../../common/layout/gridlayout.dart';
import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/container/search_container.dart';
import '../../../../common/widgets/product_cards/product_cartd_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///So the thing is, we have to add a custom app for that that may include Apple with some padding or a bar, with some curved edges or Apple with some images and what not, but to do that, we'll have to wrap it with a container right,
      ///But in the above method of the scaffold, we can't really add any container or any padding or any type of state for those Status widgets are you can contact the app for so to do that will have to make an custom app for that will be extending with the state, full budgets and implementing the preferred sized widget

      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ---AppBar---
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// ---Searchbar---
                  TSearchContainer(
                    text: 'Search in store',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// ---Categories---
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: TColors.white,
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Categories
                  const THomeCategories(),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Promo banner slider
                  const TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),

                  ///Popular product
                  const TSectionHeading(title: 'Popular Products'),
                  TGridLayout(itemCount: 10, itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


