import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/controller/app_controller.dart';
import 'education_component.dart';

class EducationTab extends StatefulWidget {
  const EducationTab({super.key});

  @override
  State<EducationTab> createState() => _EducationTabState();
}

class _EducationTabState extends State<EducationTab> {

  final AppController appController =
  Get.put(AppController(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: appController.userData?.education.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EducationComponent(
                universityName: appController.userData!.education[index].schoolName,
                degree: appController.userData!.education[index].certificateEarned,
                date: appController.userData!.education[index].year.toString(),
                grade: appController.userData!.education[index].grade,),
              if (index < appController.userData!.education.length - 1)
                const Divider(thickness: 1),
            ],
          );
        },
      )

    );
  }
}
