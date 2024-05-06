import 'package:ecommerce_app/utils/theme/custom_theme/app_bar.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  //Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    chipTheme: TChipTheme.lightChipTheme,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: Colors.white,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottonSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormField.lightInputDecorationTheme,
  );

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottonSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevetedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormField.darkInputDecorationTheme,
  );
}
