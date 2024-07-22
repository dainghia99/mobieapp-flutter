import 'package:bai_tap_lon/utils/theme/custom_theme/appbar_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/chip_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/text_field.dart';
import 'package:bai_tap_lon/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TAppTextTheme.lightTextTheme,
    elevatedButtonTheme: TAppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutLineButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: TTextFieldFormTheme.lightInputDecorationTheme,
    chipTheme: TChipTheme.lightChipTheme,
  );

  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TAppTextTheme.dartTextTheme,
    appBarTheme: TAppBarTheme.dartAppBarTheme,
    checkboxTheme: TCheckboxTheme.dartCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.dartBottomSheetTheme,
    outlinedButtonTheme: TOutLineButtonTheme.dartOutLineButtonTheme,
    inputDecorationTheme: TTextFieldFormTheme.dartInputDecorationTheme,
    chipTheme: TChipTheme.dartChipTheme,
  );
}
