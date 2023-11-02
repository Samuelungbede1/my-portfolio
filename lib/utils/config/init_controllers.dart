import 'dart:developer';

import 'package:get/get.dart';

import '../../use_cases/nav_wrapper/controller/nav_wrapper_controller.dart';

class InitControllers extends Bindings {
  @override
  void dependencies() {
    log('this is dependencies initialized...');
    Get.put(NavWrapperController());
 
  }
}
