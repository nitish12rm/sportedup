import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportedup/common/widgets/success_screen/success_screen.dart';
import 'package:sportedup/features/authentication/screen/login/login.dart';
import 'package:sportedup/utils/constants/image_strings.dart';
import 'package:sportedup/utils/constants/sizes.dart';
import 'package:sportedup/utils/constants/text_strings.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

class VerifyEmailAdress extends StatelessWidget {
  const VerifyEmailAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ///removes backarrow 
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///IMAGE
            Image(image: AssetImage(TImages.staticSuccessIllustration ),width: THelperFunctions.screenWidth()*0.6,),
            SizedBox(height: TSizes.spaceBtwSections,),
            ///TITLE AND SUBTITLE
            Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text('support@nitish.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwSections,),

            ///BUTTONS
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>SuccessScreen(image: TImages.staticSuccessIllustration, title: TTexts.yourAccountCreatedTitle, subtitle: TTexts.yourAccountCreatedSubTitle, onPressed: ()=>Get.to(()=>LoginScreen()))), child: Text(TTexts.tContinue)),),
            SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail)),)

          ],),
        ),
      ),
    );
  }
}
