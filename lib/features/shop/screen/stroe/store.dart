import 'package:flutter/material.dart';
import 'package:sportedup/common/layout/gridlayout.dart';
import 'package:sportedup/common/widgets/appbar/appbar.dart';
import 'package:sportedup/common/widgets/appbar/tabbar.dart';
import 'package:sportedup/common/widgets/custom_shape/container/search_container.dart';
import 'package:sportedup/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sportedup/common/widgets/texts/section_heading.dart';
import 'package:sportedup/features/shop/screen/stroe/widgets/category_tab.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              iconColor: TColors.dark,
              onPressed: () {},
            )
          ],
        ),

        ///Because will be having multiple kinds of scrolls like horizontal, scroll and vertical. Scroll on the same screen. That is why we are using nested, scroll view.
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,

                ///to put a widget in this space that is defined in the expanded
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        text: 'Search in the store',
                        onTap: () {},
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///Featured brands
                      const TSectionHeading(title: 'Featured Brands'),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const TBrandCard(
                              showBorder: true,
                            );
                          }),
                    ],
                  ),
                ),

                ///Tabs
                bottom: const TTabBar(tabs: [
                  Tab(
                    child: Text('Sports'),
                  ),
                  Tab(
                    child: Text('Furniture'),
                  ),
                  Tab(
                    child: Text('Electronics'),
                  ),
                  Tab(
                    child: Text('Cloths'),
                  ),
                  Tab(
                    child: Text('Cosmetics'),
                  ),
                ]),
              ),
            ];
          },

          ///Body
          body: const TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}

