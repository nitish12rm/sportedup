import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/authentication/screen/signup/signup_screem.dart';
import 'package:sportedup/utils/constants/colors.dart';
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
          padding: EdgeInsets.only(
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
                  SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              ///FORM
              Form(child: Padding(
                padding: const EdgeInsets.symmetric(vertical:TSizes.spaceBtwSections),
                child: Column(children: [
                  ///EMAIL
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields/2,),
                  ///Remember me & forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          Text(TTexts.rememberMe),
                        ],
                      ),
                      TextButton(onPressed: (){}, child: Text(TTexts.forgetPassword)),

                    ],
                  ),
                  ///Forgot password

                  SizedBox(height: TSizes.spaceBtwSections,),
                  ///Sign in button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(TTexts.signIn)),),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  ///create account button
                  SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){Get.to(()=>SignupScreen());}, child: Text(TTexts.createAccount)),),
                ],),
              ),),
              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              SizedBox(width: TSizes.spaceBtwSections,),
              ///Footer
              SizedBox(height: TSizes.spaceBtwSections,),

              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}




