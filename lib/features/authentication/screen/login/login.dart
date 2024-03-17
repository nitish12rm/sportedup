import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:sportedup/features/authentication/screen/signup/signup_screem.dart';
import 'package:sportedup/navigation_menu.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/TForm_divider.dart';
import '../../../../common/widgets/login_signup/TSocialButton.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,


          ),
          child: Column(
            children: [
              ///Login, title and subtittle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 150,image: AssetImage(dark? TImages.lightAppLogo:TImages.darkAppLogo)),
                  Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              ///FORM
              Form(child: Padding(
                padding: const EdgeInsets.symmetric(vertical:TSizes.spaceBtwSections),
                child: Column(children: [
                  ///EMAIL
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields/2,),
                  ///Remember me & forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(TTexts.rememberMe),
                        ],
                      ),
                      TextButton(onPressed: ()=>Get.to(()=>const ForgetPassword()), child: const Text(TTexts.forgetPassword)),

                    ],
                  ),
                  ///Forgot password

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  ///Sign in button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text(TTexts.signIn)),),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  ///create account button
                  SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){Get.to(()=>const SignupScreen());}, child: const Text(TTexts.createAccount)),),
                ],),
              ),),
              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(width: TSizes.spaceBtwSections,),
              ///Footer
              const SizedBox(height: TSizes.spaceBtwSections,),

              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}




