// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_color_palette.dart';
import '../../home/view/home_screen.dart';
import '../../more/view/more_screen.dart';
import '../controller/nav_wrapper_controller.dart';

class NavWrapper extends StatefulWidget {
  const NavWrapper({super.key});

  @override
  State<NavWrapper> createState() => _NavWrapperState();
}

class _NavWrapperState extends State<NavWrapper> {
  final navController = NavWrapperController.instance;
  @override
  Widget build(BuildContext context) {
    List<NavItem> navItems = [
      NavItem(title: 'Home', iconPath: 'assets/images/home.svg'),
      NavItem(title: 'More', iconPath: 'assets/images/more.svg'),
    ];
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.grey[100],
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: navController.onPageChanged,
            controller: navController.pageController,
            children: const [
              HomeScreen(),
              MoreScreen(),
              // Insights(),
              // MoreScreen(),
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom:
              Platform.isAndroid ? 16 : MediaQuery.of(context).padding.bottom,
          child: Material(
            elevation: 5,
            shadowColor: Colors.black12,
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            child: Container(
              height: 58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < navItems.length; i++)
                    InkWell(
                      onTap: () {
                        navController.goToPage(i);
                      },
                      child: Obx(() {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              navItems[i].iconPath,
                              height: 27,
                              color: i == navController.pageIndex.value
                                  ? AppColorPalette.flurBlue
                                  : AppColorPalette.TEXT_GREY,
                            ),
                            SizedBox(height: 4),
                            Text(
                              navItems[i].title,
                              style: TextStyle(
                                color: i == navController.pageIndex.value
                                    ? AppColorPalette.black
                                    : AppColorPalette.TEXT_GREY,
                              ),
                            )
                          ],
                        );
                      }),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NavItem {
  String title;
  String iconPath;
  NavItem({
    required this.title,
    required this.iconPath,
  });
}
