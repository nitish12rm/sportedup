import 'package:flutter/material.dart';
import 'package:sportedup/utils/device/device_utility.dart';
import 'package:sportedup/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
   final dark = THelperFunctions.isDarkMode(context);
   return Material(
     color: dark?Colors.black:Colors.white,
     child: TabBar(
       tabs: tabs,isScrollable: true,
       indicatorColor: TColors.primary,
       unselectedLabelColor: TColors.darkGrey,
       labelColor: dark?TColors.white:TColors.black,),
   );
  }

  @override

  Size get preferredSize =>Size.fromHeight(TDeviceUtils.getAppBarHeight());
}