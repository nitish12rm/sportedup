import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/personalization/screen/profile/profile.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../image/circular_image.dart';
class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.user,width: 50,height: 50,padding: 0,),
      title: Text('Nitish',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('nitishji@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: ()=>Get.to(()=>ProfileScreen()), icon: const Icon(Iconsax.edit,color: TColors.white,)),
    );
  }
}
