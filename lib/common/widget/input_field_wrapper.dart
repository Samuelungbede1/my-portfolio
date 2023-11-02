import 'package:flutter/material.dart';

import '../../utils/responsive_screen_functions.dart';

class InputFieldWrapper extends StatelessWidget {
  final String labelText;
  final Widget child;
  final Color? labelColor;
  final FontWeight? fontWeight;
  final double? spaceBetween;

  InputFieldWrapper({
    this.labelText = "",
    required this.child,
    this.spaceBetween,
    this.labelColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final sh = sHeight(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Color.fromRGBO(22, 46, 77, 1),
                fontSize: 18,
                fontWeight: FontWeight.normal,
                height: 1)),
        SizedBox(height: sh(spaceBetween ?? sh(4))),
        Padding(
          padding: EdgeInsets.only(bottom: sh(29)),
          child: child,
        ),
      ],
    );
  }
}
