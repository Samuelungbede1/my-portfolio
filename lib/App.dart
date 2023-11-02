
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_portfolio/utils/app_color_palette.dart';
import 'package:my_portfolio/utils/app_strings.dart';
import 'package:my_portfolio/utils/config/init_controllers.dart';
import 'package:my_portfolio/utils/config/routes.dart';
import 'package:my_portfolio/utils/config/theme.dart';
import 'package:my_portfolio/utils/responsive_screen_functions.dart';
import 'common/controller/app_controller.dart';



class App extends StatelessWidget {
  final KiwiContainer container = KiwiContainer();

  AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MockupWidth, MockupHeight),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        /**
         * Whenever the app is in use the timeout gets refreshed
         * */
        onTapDown: (TapDownDetails e) {
          print("Tapped Down");
          // controller.startTimer();
        },
        child: GetMaterialApp(
          color: AppColorPalette.primaryColor,
          debugShowCheckedModeBanner: true,
          theme: Themes.lightTheme(),
          initialRoute: AppRoutes.loginScreen,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          initialBinding: InitControllers(),
          enableLog: true,
          defaultTransition: Transition.fadeIn,
          opaqueRoute: Get.isOpaqueRouteDefault,
          popGesture: Get.isPopGestureEnable,
          smartManagement: SmartManagement.full,
        ),
      ),
    );
  }
}
