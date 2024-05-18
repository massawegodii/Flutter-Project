import 'package:ecommerce_app/common/styles/spacing_style.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/login_signup/form_divider.dart';
import '../../../../common/widget/login_signup/social_buton.dart';
import 'widget/login_form.dart';
import 'widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TSpacingStyle.paddingWithAppBarHeight,
      child: Column(
        children: [
          //Logo, Subtitle and Image
          const TLoginHeader(),

          //Form
          const TLoginForm(),

          //Divider
          TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
          const SizedBox(height: TSizes.spaceBtwSections,
          ),

          //Footer
          const TSocialButtons()
        ],
      ),
    )));
  }
}


