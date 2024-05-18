import 'package:ecommerce_app/common/widget/appbar.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widget/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widget/section_heading.dart';
import 'package:ecommerce_app/utils/constants/color.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/images/t_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //Searchbar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      //Feature Brand
                      TSectionHeading(
                          title: 'Featured Brand', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //Icon
                            TCircularImage(
                              image: TImages.clothIcon,
                              isNetworkImage: false,
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.black
                                  : TColors.black,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems / 2),
                            //Text
                            Column(
                              children: [
                                Text("Nike",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                                const SizedBox(width: TSizes.xs),
                                const Icon(Iconsax.verify5,
                                    color: TColors.primary, size: TSizes.iconSm)
                              ],
                            ) 
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
