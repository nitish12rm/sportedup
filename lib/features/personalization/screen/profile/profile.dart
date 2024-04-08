import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/image/circular_image.dart';
import 'package:sportedup/common/widgets/appbar/appbar.dart';
import 'package:sportedup/common/widgets/texts/section_heading.dart';
import 'package:sportedup/features/personalization/screen/profile/widgets/profile_menu.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text("Profile"),),
      ///Body
      body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          ///Profile pic
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                TCircularImage(image: TImages.user,width: 80,height: 80,),
                TextButton(onPressed: (){}, child: Text('Change Profile Picture'),),
              ],
            ),
          ),
          ///Details
          SizedBox(height: TSizes.spaceBtwItems/2,),
          Divider(),
          SizedBox(height: TSizes.spaceBtwItems,),
          TSectionHeading(title: 'Profile Information',showActionButton: false,),
          SizedBox(height: TSizes.spaceBtwItems,),

        TProfileMenu(onPressed: (){}, title: 'Name', value: 'Nitish'),
        TProfileMenu(onPressed: (){}, title: 'Username', value: 'nitish12'),
          SizedBox(height: TSizes.spaceBtwItems,),
          Divider(),
          SizedBox(height: TSizes.spaceBtwItems,),
          TSectionHeading(title: 'Personal Information',showActionButton: false,),
          SizedBox(height: TSizes.spaceBtwItems,),
          TProfileMenu(onPressed: (){}, title: 'UserId', value: '536243',icon: Iconsax.copy,),
          TProfileMenu(onPressed: (){}, title: 'Email', value: 'nitish@gmail.com'),
          TProfileMenu(onPressed: (){}, title: 'Phone no', value: '1738402083'),
          TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
          TProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '12-02-2002'),
          Divider(),
          SizedBox(height: TSizes.spaceBtwItems,),
          Center(child: TextButton(onPressed: (){},child: Text('Close Account',style: TextStyle(color: Colors.red),),),)

        ],
      ),
      ),
      ),

    );
  }
}

