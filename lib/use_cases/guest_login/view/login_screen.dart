

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../../common/controller/app_controller.dart';
import '../../../common/widget/input_field_wrapper.dart';
import '../../../common/widget/primary_button.dart';
import '../../../common/widget/text_input_field.dart';
import '../controller/guest_login_controller.dart';

class LogInScreen extends StatefulWidget {

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}
class _LogInScreenState extends State<LogInScreen> {
  AppController appController = Get.put(AppController());

  final GuestLoginController loginController = Get.isRegistered<GuestLoginController>()
      ? Get.find<GuestLoginController>()
      : Get.put(GuestLoginController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp, top: 145.sp,),
                child: Obx(() => InputFieldWrapper(
                  labelText: "User Name",
                  child: AppTextField(
                    keyboardType: TextInputType.text,
                    controller: loginController.userNameController,
                    errorMessage: loginController.userNameError.value,
                    onChanged: loginController.clearUserNameError,
                    maxLength: 10,
                  ),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 15.sp, right: 15.sp, top: 5.sp, bottom: 15.sp),
                child: Obx(() => InputFieldWrapper(
                  labelText: "Password",
                  child: AppTextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: loginController.passWordController,
                    errorMessage: loginController.passwordError.value,
                    onChanged: loginController.clearPasswordError,
                    maxLength: 10,
                  ),
                )),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
                child: PrimaryButton(
                  onPressed: loginController.validateInputsWithAccount,
                  isFullWidth: true,
                  text: 'Login'.toUpperCase(),
                  textColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
            ],
          ),
        ),
    );
  }

}


