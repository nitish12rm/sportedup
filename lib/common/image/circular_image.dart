import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, this.height=56, this.width=56, this.padding=TSizes.sm, this.boxFit=BoxFit.cover, required this.image,  this.isNetworkImage=false, this.overLayColor, this.backgroundColor,
  });
final double height,width,padding;
final BoxFit? boxFit;
final String image;
final bool isNetworkImage;
final Color? overLayColor;
final Color? backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //if Background colour is null than switch to dark mode and light mode design
          color: backgroundColor?? (THelperFunctions.isDarkMode(context)? TColors.black  : TColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: boxFit,
        image:isNetworkImage?NetworkImage(image): AssetImage(image) as ImageProvider,
        color:overLayColor,
      ),
    );
  }
}
