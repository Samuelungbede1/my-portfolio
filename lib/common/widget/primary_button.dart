import 'package:flutter/material.dart';

import '../../utils/responsive_screen_functions.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Function()? onPressed;
  final Color? textColor;
  final double? horizontalPadding;
  final bool isFullWidth;

  PrimaryButton({
    required this.text,
    this.buttonColor,
    required this.onPressed,
    this.textColor,
    this.horizontalPadding,
    this.isFullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final Function sh = sHeight(context);
    final Function sw = sHeight(context);

    return ElevatedButton(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
              Size(isFullWidth ? double.infinity : sw(16), sh(50))),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
          backgroundColor:
          MaterialStateProperty.all<Color>(buttonColor ?? Colors.black),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: horizontalPadding ?? sw(60)))),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontSize: sh(12), color: textColor ?? Colors.black)),
      onPressed: onPressed,
    );
  }
}

class DynamicPrimaryButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Function()? onPressed;
  final Color? textColor;
  final double? horizontalPadding;
  final bool isFullWidth;

  DynamicPrimaryButton({
    required this.text,
    this.buttonColor,
    required this.onPressed,
    this.textColor,
    this.horizontalPadding,
    this.isFullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final Function sh = sHeight(context);
    final Function sw = sHeight(context);

    return ElevatedButton(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
              Size(isFullWidth ? double.infinity : sw(16), sh(54))),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: horizontalPadding ?? sw(60)))),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
