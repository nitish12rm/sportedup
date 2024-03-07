import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/widgets/login_signup/TForm_divider.dart';
import 'package:sportedup/common/widgets/login_signup/TSocialButton.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///TITLE
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///FORM
              Form(
                child: Column(
                  children: [
                    ///FIRST AND LAST NAME
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        SizedBox(
                          width: TSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    ///USERNAME
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.user_edit),
                          labelText: TTexts.username),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    ///EMAIL
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct),
                          labelText: TTexts.email),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    ///PHONE NUMBER
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: TTexts.phoneNo),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    ///PASSWORD
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    ///TERM AND CONDITION CHECKBOX
                    Row(
                      children: [
                        SizedBox(height: 24,width: 24,child: Checkbox(value: true, onChanged: (value){}),),
                        SizedBox(width: TSizes.spaceBtwItems,),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: '${TTexts.iAgreeTo}', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${TTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(color:dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,decorationColor: dark?TColors.white:TColors.primary)),
                          TextSpan(text: '${TTexts.and}',style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${TTexts.termsOfUse}', style: Theme.of(context).textTheme.bodyMedium!.apply(color:dark?TColors.white:TColors.primary,decoration: TextDecoration.underline,decorationColor: dark?TColors.white:TColors.primary)),

                        ])


                        ),
                      ],
                    ),
                    ///SIGNUP BUTTON
                    SizedBox(height: TSizes.spaceBtwSections,),
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(TTexts.createAccount)),),

                  ],
                ),
              ),
              ///DIVIDER
              SizedBox(height: TSizes.spaceBtwSections,),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              ///SOCIAL BUTTONS
              SizedBox(height: TSizes.spaceBtwSections,),
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
