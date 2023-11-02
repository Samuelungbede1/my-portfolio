
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';
import '../../../api/app_config.dart';
import '../../../common/controller/app_controller.dart';
import '../../../utils/app_formatter.dart';
import '../../../utils/config/navigation_functions.dart';
import '../../nav_wrapper/view/nav_wrapper.dart';

class GuestLoginController extends GetxController with GetSingleTickerProviderStateMixin {

  AppController appController = Get.put(AppController());
  KiwiContainer container = KiwiContainer();

  late TextEditingController userNameController;
  late TextEditingController passWordController;
  late AppFormatter appFormatter;

  RxString userNameError = "".obs;
  RxString passwordError = "".obs;


  @override
  void onInit() {
    initKiwiDependencies();
    initControllers();
    super.onInit();
  }


  initControllers() {
    userNameController = appFormatter.getGenericTextController();
    passWordController = appFormatter.getGenericTextController();
  }

  void initKiwiDependencies() {
    appFormatter = container.resolve<AppFormatter>();
  }

  validateInputsWithAccount() {
    if (userNameController.text.isEmpty) {
      userNameError.value = emptyInputFieldError;
    } else if (passWordController.text.isEmpty) {
      passwordError.value = emptyInputFieldError;
    } else {
      Map<String, dynamic> loginData = setLoginData(userNameController.text, passWordController.text);
      handleLogin(loginData);
    }
  }


  Map<String, dynamic> setLoginData(accountNumber, mPIN) {
    return {
      "username": accountNumber,
      "password": mPIN,
    };
  }


  handleLogin(loginData) async {
    debugPrint("$loginData");
    Future.delayed(Duration(seconds: 5));

    if (true) {
      pop();
      gotoNextScreen();
    } else {
      print("");
    }
  }

  void gotoNextScreen() {
    push(page: const NavWrapper());
  }


  disposeControllers() {
    userNameController.dispose();
    passWordController.dispose();
  }



  goBack() {
    pop();
  }

  void clearUserNameError(String input) => userNameError.value = "";
  void clearPasswordError(String input) => passwordError.value = "";

}
