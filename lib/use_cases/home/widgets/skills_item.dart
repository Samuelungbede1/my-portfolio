import 'package:flutter/material.dart';
import '../../../utils/app_color_palette.dart';

class SkillsItem extends StatelessWidget {
  final String text;

  const SkillsItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColorPalette.gray, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
