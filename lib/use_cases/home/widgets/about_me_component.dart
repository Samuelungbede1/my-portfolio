import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/config/size_config.dart';

class AboutMeComponent extends StatelessWidget {
  const AboutMeComponent({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 250.ph,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0.pw),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 13.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
