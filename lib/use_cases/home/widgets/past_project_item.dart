import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_color_palette.dart';
import '../../../utils/base_styles.dart';

class PastProjectItem extends StatefulWidget {
  const PastProjectItem({
    Key? key,
    required this.subtitle,
    required this.additionalContent,
  }) : super(key: key);

  final String subtitle;
  final String additionalContent;

  @override
  State<PastProjectItem> createState() => _PastProjectItemState();
}

class _PastProjectItemState extends State<PastProjectItem>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 650),
        curve: Curves.fastEaseInToSlowEaseOut,
        height: isExpanded ? 180 : 80.0,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: AppColorPalette.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.subtitle,
                    style: subtitleText,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child:isExpanded ? const Icon(Icons.remove, color: Colors.red,):Icon(Icons.add),
                  ),
                ],
              ),
              if (isExpanded)
                Expanded(
                  child: Text(
                    widget.additionalContent,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
