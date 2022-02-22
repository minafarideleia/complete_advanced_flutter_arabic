import 'package:advanced_flutter_arabic/presentation/color_manager.dart';
import 'package:advanced_flutter_arabic/presentation/font_manager.dart';
import 'package:advanced_flutter_arabic/presentation/styles_manager.dart';
import 'package:advanced_flutter_arabic/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,
      // ripple effect color
      // cardview theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
      // app bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.white)),
      // button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey1,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManager.white, fontSize: FontSize.s17),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12))))

      // text theme

      // input decoration theme (text form field)
      );
}
