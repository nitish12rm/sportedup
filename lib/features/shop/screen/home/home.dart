import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/widgets/appbar/appbar.dart';
import 'package:sportedup/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:sportedup/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:sportedup/features/shop/screen/home/widgets/home_category.dart';
import 'package:sportedup/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

import '../../../../common/image/rounded_image.dart';
import '../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../common/widgets/custom_shape/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/container/search_container.dart';
import '../../../../common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
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
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// ---Searchbar---
                  TSearchContainer(
                    text: 'Search in store',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// ---Categories---
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: TColors.white,
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Categories
                  THomeCategories()
                ],
              ),
            ),

            ///Body
            const Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Promo banner
                    TPromoSlider(banner: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],),
                  ],
                )),

          ],
        ),
      ),
    );
  }
}

