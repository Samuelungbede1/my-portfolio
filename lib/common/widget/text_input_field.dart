import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/responsive_screen_functions.dart';
import '../../utils/app_color_palette.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;

  final void Function(String)? onChanged;

  final TextInputType? keyboardType;

  final bool obscureText;

  final bool isReadOnly;
  final void Function()? onTap;

  final String? errorMessage;

  final FocusNode? focusNode;

  final TextEditingController? controller;

  final bool enabled;

  final List<TextInputFormatter>? inputFormatters;

  final bool enableInteractiveSelection;

  final double borderRadius;

  final Color fillColor;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final bool isTransparentBorder;

  final Color? textColor;

  final TextCapitalization textCapitalization;

  final Color borderColor;

  final int maxLength;

  AppTextField({
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.keyboardType,
    this.errorMessage,
    this.controller,
    this.focusNode,
    this.borderRadius = 6.0,
    this.enabled = true,
    this.inputFormatters,
    this.enableInteractiveSelection = true,
    this.obscureText = false,
    this.fillColor = AppColorPalette.white,
    this.isTransparentBorder = false,
    this.textCapitalization = TextCapitalization.none,
    this.borderColor = AppColorPalette.gray,
    this.textColor,
    this.onTap,
    this.isReadOnly = false,
    this.maxLength = TextField.noMaxLength,
  });

  @override
  Widget build(BuildContext context) {
    final sh = sHeight(context);
    final sw = sWidth(context);

    return TextField(
      inputFormatters: inputFormatters,
      enableInteractiveSelection: enableInteractiveSelection,
      enabled: enabled,
      textCapitalization: textCapitalization,
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      readOnly: isReadOnly,
      onTap: onTap,
      // readOnly: isReadOnly == null ? false : isReadOnly,
      keyboardType: keyboardType,
      maxLength: maxLength,

      style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: sh(13)),
      decoration: InputDecoration(
        errorText:
            errorMessage == "" || errorMessage == null ? null : errorMessage,
        counterText: "",
        errorStyle: TextStyle(fontSize: sh(12)),
        contentPadding: EdgeInsets.fromLTRB(sw(12), sh(16), sw(12), sh(16)),
        hintStyle: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontSize: sh(13), color: textColor),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: isTransparentBorder ? Colors.transparent : borderColor,
                width: 1),
            borderRadius: BorderRadius.circular(borderRadius)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
                color: isTransparentBorder ? Colors.transparent : borderColor,
                width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
                color: isTransparentBorder
                    ? Colors.transparent
                    : AppColorPalette.black,
                width: 2)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isTransparentBorder ? Colors.transparent : borderColor,
                width: 1),
            borderRadius: BorderRadius.circular(borderRadius)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isTransparentBorder ? Colors.transparent : Colors.red,
                width: 1)),
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onChanged: onChanged,
    );
  }
}
