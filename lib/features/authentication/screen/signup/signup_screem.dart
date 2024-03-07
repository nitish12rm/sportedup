import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/common/widgets/login_signup/TForm_divider.dart';
import 'package:sportedup/common/widgets/login_signup/TSocialButton.dart';
import 'package:sportedup/features/authentication/screen/signup/widgets/signupForm.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

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
              TSignUpForm(),
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


