import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_palette.dart';
import '../../../utils/base_styles.dart';

class CertificationItem extends StatefulWidget {
  const CertificationItem({
    Key? key,
    required this.imageUrl,
    required this.subtitle,
  }) : super(key: key);

  final String imageUrl;
  final String subtitle;

  @override
  State<CertificationItem> createState() => _CertificationItemState();
}

class _CertificationItemState extends State<CertificationItem>
    with TickerProviderStateMixin {


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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          color: AppColorPalette.white,
          borderRadius: BorderRadius.circular(
              10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 3.0.h),
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(widget.imageUrl),
            ),
            const SizedBox(height: 2.0),
            Text(
              widget.subtitle,
              style: subtitleText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
