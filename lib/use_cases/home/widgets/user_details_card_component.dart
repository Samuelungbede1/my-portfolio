import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/config/size_config.dart';

class UserDetailsCardComponent extends StatelessWidget {
  const UserDetailsCardComponent({
    Key? key,
    required this.content,
  }) : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.all(16.0.pw),
        child: Column(
          children: [
            SizedBox(
              height: 170.ph,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0.pw),
                ),
                child: content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
