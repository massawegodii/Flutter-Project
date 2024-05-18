import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

import '../../../../common/widget/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../../common/widget/layouts/grid_layout.dart';
import '../../../../common/widget/products/product_cards/product_card_vertical.dart';
import '../../../../common/widget/section_heading.dart';
import '../home/widget/home_appbar.dart';
import 'home_categories.dart';
import 'promo_slidder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  TSearchContainer(text: 'Search in store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Header
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                      ],
                    ),
                  ),

                  //Categories
                  THomeCategories()
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo slidder
                  const TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  TSectionHeading(title: "Popular Products", onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Popular product vertical
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVerical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
