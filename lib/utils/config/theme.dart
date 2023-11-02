import 'package:flutter/material.dart';
import '../app_color_palette.dart';

class Themes {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryTextTheme: textTheme(),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(foregroundColor: Colors.white),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          toolbarTextStyle: TextStyle(
            backgroundColor: Colors.white,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)),
      // fontFamily: 'Montserrat',
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: AppColorPalette.BLUE,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorPalette.BLUE,
      colorScheme: const ColorScheme.light(primary: AppColorPalette.BLUE),
    );
  }
}

InputDecorationTheme inputDecorationTheme({double radius = 10}) {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      gapPadding: 5);
  OutlineInputBorder errorInputBorder = OutlineInputBorder(
      gapPadding: 5,
      borderSide: const BorderSide(
        width: 0.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(radius)));
  return InputDecorationTheme(
    filled: true,
    labelStyle:
        const TextStyle(color: AppColorPalette.CUSTOM_WHITE, fontSize: 12),
    hintStyle:
        const TextStyle(color: AppColorPalette.CUSTOM_WHITE, fontSize: 12),
    contentPadding: EdgeInsets.zero,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    errorBorder: errorInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodySmall: TextStyle(
        color: AppColorPalette.TEXT_COLOR,
        fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(
        color: AppColorPalette.TEXT_COLOR,
        fontWeight: FontWeight.w500),
  );
}
