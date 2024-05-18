import 'package:ecommerce_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class TShaddowStyle {
  static final verticalProductShaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalProductShaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

}
 