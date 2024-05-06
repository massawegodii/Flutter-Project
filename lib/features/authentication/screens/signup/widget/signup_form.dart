import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_condition_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //Firstname and Lastname
        const Row(
          children: [
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        //Username
        const TextField(
          expands: false,
          decoration: InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        //Email
        const TextField(
          expands: false,
          decoration: InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwInputFields),
        //Phone Number
        const TextField(
          expands: false,
          decoration: InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwInputFields),
        // Password
        const TextField(
          expands: false,
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //Terms & Condition checkbox
        const TTermsAndConditions(),
        const SizedBox(height: TSizes.spaceBtwSections),
        //Sigup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const EmailVerifyScreen()),
              child: const Text(TTexts.createAccount)),
        ),
      ],
    ));
  }
}
