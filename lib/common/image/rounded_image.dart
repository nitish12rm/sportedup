import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius=false,
    this.border,
    this.backlgroundColor,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,  this.borderRadius=TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backlgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backlgroundColor,
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit, image: isNetworkImage?NetworkImage(imageUrl): AssetImage(imageUrl) as ImageProvider)),
      ),
    );
  }
}
