
import 'package:flutter/widgets.dart';
import '../../common/views/screens/error.dart';
import '../../use_cases/guest_login/view/login_screen.dart';
import '../../use_cases/home/view/home_screen.dart';
import '../../use_cases/nav_wrapper/view/nav_wrapper.dart';
import 'navigation_builder.dart';

class AppRoutes {
  AppRoutes();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return NavigationBuilder(LogInScreen(), settings: settings);
      case home:
        return NavigationBuilder(NavWrapper(), settings: settings);
        case moreScreen:
        return NavigationBuilder(HomeScreen(), settings: settings);

      default:
        return NavigationBuilder(const ErrorPage(), settings: settings);
    }
  }

  static const String loginScreen = '/loginScreen';
  static const String home = '/home';
  static const String moreScreen = '/more';
}
