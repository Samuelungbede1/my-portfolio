import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'config/size_config.dart';
import 'app_color_palette.dart';

class FWt {
  FWt();

  static FontWeight extraLight = FontWeight.w200;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight large = FontWeight.w900;
}

class Styles {
  Styles();

  static Text regular(
    String text, {
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? align,
    double? height,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
    String fontFamily = 'Montserrat',
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 12.0,
        fontWeight: fontWeight ?? FWt.regular,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static Text light(
    String text, {
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? align,
    double? height,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
    String fontFamily = 'Montserrat',
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 12.0,
        fontWeight: fontWeight ?? FWt.light,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static TextSpan spanRegular(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    double? height,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
    String fontFamily = 'Montserrat',
    VoidCallback? recognizer,
  }) {
    return TextSpan(
      recognizer: TapGestureRecognizer()..onTap = recognizer,
      text: text,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FWt.regular,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        fontStyle: fontStyle,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static TextSpan spanMedium(
    String? text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    double? height,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
    GestureRecognizer? recognizer,
  }) {
    return TextSpan(
      recognizer: recognizer,
      text: text,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FWt.medium,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        fontStyle: fontStyle,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
    );
  }

  static Text medium(String text,
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      TextAlign? align,
      double? height,
      bool strike = false,
      int? lines,
      TextOverflow? overflow,
      bool underline = false,
      String fontFamily = 'Montserrat',
      bool? softWrap}) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      softWrap: softWrap,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FWt.medium,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static Text semiBold(
    String text, {
    double? fontSize,
    Color? color,
    TextOverflow? overflow,
    TextAlign? align,
    double? height,
    bool? strike = false,
    bool underline = false,
    int? lines,
    String fontFamily = 'Montserrat',
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: FWt.semiBold,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike!
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static TextSpan spanSemiBold(
    String? text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    double? height,
    FontWeight? fontWeight,
    String fontFamily = 'Montserrat',
    GestureRecognizer? recognizer,
  }) {
    return TextSpan(
      recognizer: recognizer,
      text: text,
      style: TextStyle(
          fontSize: fontSize ?? 14.0,
          fontWeight: fontWeight ?? FWt.semiBold,
          color: color ?? AppColorPalette.TEXT_COLOR,
          height: height,
          decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
          fontFamily: fontFamily),
    );
  }

  static TextSpan spanBold(
    String? text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    double? height,
    GestureRecognizer? recognizer,
  }) {
    return TextSpan(
      recognizer: recognizer,
      text: text,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: FWt.bold,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
    );
  }

  static Text bold(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    double? height,
    bool? softWrap,
    FontWeight? fontWeight,
    bool underline = false,
    String fontFamily = 'Montserrat',
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: SizeConfig.propWidth(fontSize ?? 14.0),
        fontWeight: fontWeight ?? FWt.bold,
        color: color ?? AppColorPalette.TEXT_COLOR,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
        fontFamily: fontFamily,
      ),
    );
  }

  static Text extraBold(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    int? lines,
    bool strike = false,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: FWt.extraBold,
        color: color ?? AppColorPalette.TEXT_COLOR,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
    );
  }

  static Text large(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    int? lines,
    bool strike = false,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 14.0,
        fontWeight: FWt.large,
        color: color ?? AppColorPalette.TEXT_COLOR,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
    );
  }

  static WidgetSpan subscriptText({
    required String text,
    required TextStyle style,
    double textScaleFactor = 0.6,
    Offset textOffset = const Offset(0.7, 1.399),
  }) {
    return WidgetSpan(
      child: Transform.translate(
        offset: textOffset,
        child: Text(
          text,
          textScaleFactor: textScaleFactor,
          style: style,
        ),
      ),
    );
  }

  static WidgetSpan widgetsSpan(Widget widget) {
    return WidgetSpan(child: widget, alignment: PlaceholderAlignment.middle);
  }
}
