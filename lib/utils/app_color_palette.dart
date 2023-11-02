// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class AppColorPalette {

  static const MaterialColor BLUE = MaterialColor(
    0xFF4A9BDD, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE9F3FB),
      100: Color(0xFFC9E1F5),
      200: Color(0xFFA5CDEE),
      300: Color(0xFF80B9E7),
      400: Color(0xFF65AAE2),
      500: Color(0xFF4A9BDD),
      600: Color(0xFF4393D9),
      700: Color(0xFF3A89D4),
      800: Color(0xFF327FCF),
      900: Color(0xFF226DC7),
    },
  );

  static const MaterialColor TEXT_COLOR = MaterialColor(
    0xFF7B7777, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff333333), //10%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );

  static const MaterialColor CUSTOM_WHITE = MaterialColor(
    0xFFFFFFFF, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffffff), //10%
      100: Color(0xffffffff), //20%
      200: Color(0xffffffff), //30%
      300: Color(0xffffffff), //40%
      400: Color(0xffffffff), //50%
      500: Color(0xffffffff), //60%
      600: Color(0xffffffff), //70%
      700: Color(0xffffffff), //80%
      800: Color(0xffffffff), //90%
      900: Color(0xffffffff), //100%
    },
  );

  static MaterialColor CUSTOM_BACKGROUND = const MaterialColor(
    0xFFF0F4FA, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffffff), //10%
      100: Color(0xffffffff), //20%
      200: Color(0xffffffff), //30%
      300: Color(0xffffffff), //40%
      400: Color(0xffffffff), //50%
      500: Color(0xffffffff), //60%
      600: Color(0xffffffff), //70%
      700: Color(0xffffffff), //80%
      800: Color(0xffffffff), //90%
      900: Color(0xff000000), //100%
    },
  );


  static const MaterialColor TEXT_GREY = MaterialColor(
    0xffB8B3B4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffffff), //10%
      100: Color(0xffffffff), //20%
      200: Color(0xffffffff), //30%
      300: Color(0xffffffff), //40%
      400: Color(0xffffffff), //50%
      500: Color(0xffffffff), //60%
      600: Color(0xffffffff), //70%
      700: Color(0xffffffff), //80%
      800: Color(0xffffffff), //90%
      900: Color(0xffffffff), //100%
    },
  );


  static const Color bgColor = Color(0xffF1F1F1);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color gray = Color(0xffadadad);
  static const Color red = Color(0xffe81616);
  static const Color primaryColor = Color(0xff162D4C);
  static const Color flurBlue = Color(0xff162D4C);

}

class AppColors {}
