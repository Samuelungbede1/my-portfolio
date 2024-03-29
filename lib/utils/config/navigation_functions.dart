import 'package:flutter/material.dart';
import 'package:get/get.dart';

push({required Widget page, dynamic arguments}) {
  Get.to(page, arguments: arguments);
}

pushUntil({required Widget page}) {
  Get.offAll(page);
}

pushtoNamedRoute(String namedRoute) {
  Get.offAndToNamed(namedRoute);
}

pushReplacement({required Widget page, dynamic arguments}) {
  Get.off(page, arguments: arguments);
}

pushReplacementAndDismissDialog({required String route, dynamic arguments}) {
  Navigator.popUntil(Get.context!, (route) {
    return route.settings.name == "/";
  });
}

pop() {
  Get.back();
}

enum RouteTransitionCallback { didPush, didPopNext, didPop, didPushNext }
