import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportedup/features/shop/screen/home/home.dart';
import 'package:sportedup/utils/constants/colors.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>controller.selectedIndex.value = index ,
            ///colors
            backgroundColor: dark?TColors.black:Colors.white,
            indicatorColor: dark?TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
///We will have to wrap the body with the OBX so that it listens to the changes in the controller or navigation menu controller
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [HomeScreen(),Container(color: Colors.yellow,),Container(color: Colors.red,),Container(color: Colors.blue,),];
}
///So here we are not using the sad state because the sad state will redraw the whole screen and that is what we don't want because it will take resources if they ask so many widgets to be rebuilt. Instead of that we are using the get X controller and to be exact we are we are creating a class now called navigation menu controller which is extending or we can say inheriting the gate X controller so it'll be listening to the index.
///But how exactly will it be listening to the index of the navigation menu bar well for that they get its controller half the EOPS method that actually listens to the variable
///So what about changes that will be happening to the instance of that OBS variable in the car X controller will be listening to it
///Samina motive is not to use the sad state function so how are we exactly going to rebuild the screen well to do that we will wrap the navigation menu bar with the OB ex widget which comes under the getx controller
///OB ex message of Capex controller will rebuild the navigation bar and will be listening to the state changes