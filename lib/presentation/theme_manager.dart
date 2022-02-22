import 'package:advanced_flutter_arabic/presentation/color_manager.dart';
import 'package:advanced_flutter_arabic/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      // cardview theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4)
      // app bar theme

      // button theme

      // text theme

      // input decoration theme (text form field)

      );
}
