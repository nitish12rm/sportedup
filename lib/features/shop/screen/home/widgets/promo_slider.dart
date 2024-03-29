import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportedup/features/shop/controllers/home_controller.dart';
import 'package:sportedup/utils/constants/colors.dart';

import '../../../../../common/image/rounded_image.dart';
import '../../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });
final List<String> banner;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1, onPageChanged: (index,_)=>controller.updatePageIndicator(index)),
          items: banner.map((imageUrl) => TRoundedImage(imageUrl: imageUrl)).toList()),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                   TCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value==i ? TColors.primary:TColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
