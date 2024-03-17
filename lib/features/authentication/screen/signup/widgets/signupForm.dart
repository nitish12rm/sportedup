import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/authentication/screen/signup/verify_email.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          ///FIRST AND LAST NAME
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          ///USERNAME
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: TTexts.username),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          ///EMAIL
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          ///PHONE NUMBER
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: TTexts.phoneNo),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          ///PASSWORD
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          ///TERM AND CONDITION CHECKBOX
          Row(
            children: [
              SizedBox(height: 24,width: 24,child: Checkbox(value: true, onChanged: (value){}),),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text.rich(TextSpan(children: [
                TextSpan(text: TTexts.iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(color:dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,decorationColor: dark?TColors.white:TColors.primary)),
                TextSpan(text: TTexts.and,style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(color:dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,decorationColor: dark?TColors.white:TColors.primary)),

              ])


              ),
            ],
          ),
          ///SIGNUP BUTTON
          const SizedBox(height: TSizes.spaceBtwSections,),
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const VerifyEmailAdress()), child: const Text(TTexts.createAccount)),),

        ],
      ),
    );
  }
}