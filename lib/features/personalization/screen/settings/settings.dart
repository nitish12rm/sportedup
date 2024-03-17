import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/widgets/appbar/appbar.dart';
import 'package:sportedup/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:sportedup/common/widgets/texts/section_heading.dart';
import 'package:sportedup/features/personalization/screen/settings/setting_menu_tile.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/sizes.dart';

import '../../../../common/list_tile/user_profile_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ///Header
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              ///Appbar
              TAppBar(
                title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: TColors.white),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///User profile card
              const TUserProfileTile(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          )),

          ///body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Account setting
                const TSectionHeading(title: 'Account Setting',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TSettingMenuTile(title: 'My Address', subtitle: 'Set Shopping delivery address', icon: Iconsax.safe_home, onTap: (){}),
                TSettingMenuTile(title: 'My Cart', subtitle: 'Add Remove products and move to check out', icon: Iconsax.shopping_cart, onTap: (){}),
                TSettingMenuTile(title: 'Orders', subtitle: 'In progress or completed orders', icon: Iconsax.bag_tick, onTap: (){}),
                TSettingMenuTile(title: 'Bank Account', subtitle: 'Withdraw Balance to registered bank account', icon: Iconsax.bank, onTap: (){}),
                TSettingMenuTile(title: 'My Coupons', subtitle: 'List all the discounted coupons', icon: Iconsax.discount_shape, onTap: (){}),
                TSettingMenuTile(title: 'Notifications', subtitle: 'Set any kind of notification message', icon: Iconsax.notification, onTap: (){}),
                TSettingMenuTile(title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', icon: Iconsax.security_card, onTap: (){}),
                ///App setting
                const SizedBox(height: TSizes.spaceBtwSections,),
                const TSectionHeading(title: 'App Setting',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TSettingMenuTile(title: 'Load Data', subtitle: 'Upload data to your cloud fireblace', icon: Iconsax.document_upload, trailing: Switch(value: true, onChanged: (value){}),),
                TSettingMenuTile(title: 'Geolocation', subtitle: 'Set recommendation based on location', icon: Iconsax.document_upload, trailing: Switch(value: true, onChanged: (value){}),),
                TSettingMenuTile(title: 'Safe mode', subtitle: 'Search result is safe for all ages', icon: Iconsax.document_upload, trailing: Switch(value: false, onChanged: (value){}),),
                TSettingMenuTile(title: 'HD image quality', subtitle: 'Set image quality to be seen', icon: Iconsax.document_upload, trailing: Switch(value: false, onChanged: (value){}),),

                const SizedBox(height: TSizes.spaceBtwSections,),
                ///Logout button
                SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
