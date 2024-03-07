import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: TSizes.spaceBtwItems*2,),

            ///text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefix: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections,),
            ///Submit Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>ResetPassword()), child: Text(TTexts.submit),),)
          ],
        ),
      ),
    );
  }
}
