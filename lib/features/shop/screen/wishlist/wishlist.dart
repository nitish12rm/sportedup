import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/icon/circular_icon.dart';
import 'package:sportedup/common/layout/gridlayout.dart';
import 'package:sportedup/common/widgets/appbar/appbar.dart';
import 'package:sportedup/common/widgets/product_cards/product_cartd_vertical.dart';
import 'package:sportedup/features/shop/screen/home/home.dart';
import 'package:sportedup/utils/constants/sizes.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder:(_,index)=> const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
