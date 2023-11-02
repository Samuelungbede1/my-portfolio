import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color_palette.dart';
import '../../../utils/base_styles.dart';

class ListViewCard extends StatefulWidget {
  const ListViewCard({
    Key? key,
    required this.imageUrl,
    required this.subtitle,
    required this.releaseDate,
  }) : super(key: key);

  final String imageUrl;
  final String subtitle;
  final String releaseDate;

  @override
  State<ListViewCard> createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard>
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
        // width: 150.0.w,
        height: 200,
        decoration: BoxDecoration(
          color: AppColorPalette.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 3.0.h),
            Container(
              height: 130.0.h, // Set your desired height
              // width: 130.0.w, // Set your desired width
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, // Square shape
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.imageUrl),
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            Text(
              widget.subtitle,
              style: subtitleText,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.releaseDate,
              style: subtitleText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

}
