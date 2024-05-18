import 'package:ecommerce_app/common/styles/shaddow.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widget/images/t_rounded_image.dart';
import 'package:ecommerce_app/utils/constants/color.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/t_circular_icon.dart';
import '../../text/product_price_text.dart';
import '../../text/product_title_text.dart';

class TProductCardVerical extends StatelessWidget {
  const TProductCardVerical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    //Container with side paddings, colors, edges,radius and shaddow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShaddowStyle.verticalProductShaddow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, discount tags, wishList Button
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
                  //Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),

                  //Favorite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections / 2),

            //Details
            const TProductTittleText(
                title: 'Green Nike Air Shoes', smallSize: true),
            const SizedBox(height: TSizes.spaceBtwSections / 2),

            Row(
              children: [
                Text("Nike",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(width: TSizes.xs),
                const Icon(Iconsax.verify5,
                    color: TColors.primary, size: TSizes.iconSm)
              ],
            ),

            //Add Space
            // const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const TProductPriceText(
                  price: '25000',
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      // width: TSizes.iconLg * 1.2,
                      // height: TSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: TColors.white))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
