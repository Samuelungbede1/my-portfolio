import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/controller/app_controller.dart';
import '../../../utils/app_color_palette.dart';
import '../../home/widgets/past_project_item.dart';

class PastProjectsTab extends StatefulWidget {
  const PastProjectsTab({
    super.key,
  });

  @override
  State<PastProjectsTab> createState() => _PastProjectsTabState();
}

class _PastProjectsTabState extends State<PastProjectsTab> {

  final AppController appController =
  Get.put(AppController(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPalette.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: appController.userData?.pastProjects.length,
          itemBuilder: (BuildContext context, int index) {
            return PastProjectItem(
              subtitle: appController.userData!.pastProjects[index].title,
              additionalContent:appController.userData!.pastProjects[index].description,
            );
          },
        ),
      ),
    );
  }
}
