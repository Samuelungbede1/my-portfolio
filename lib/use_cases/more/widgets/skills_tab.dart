import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_portfolio/utils/app_color_palette.dart';

import '../../../common/controller/app_controller.dart';
import '../../home/widgets/skills_item.dart';

class SkillsTab extends StatefulWidget {
  const SkillsTab({
    super.key,
  });

  @override
  State<SkillsTab> createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab> {

  final AppController appController =
  Get.put(AppController(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPalette.bgColor,
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 20, bottom: 100),
        scrollDirection: Axis.horizontal,
        itemCount: appController.userData?.skills.length, //
        itemBuilder: (BuildContext context, int index) {
          return  SkillsItem(
            text:   appController.userData!.skills[index],
          );
        },
        crossAxisCount: 11,
        staggeredTileBuilder: (int index) => StaggeredTile.count(1,index.isEven? 2 :3),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 5.0,
      ),
    );
  }
}
