
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/controller/movie_list_controller.dart';
import '../../api/api.dart';
import '../../use_cases/guest_login/view/login_screen.dart';
import '../../utils/config/navigation_functions.dart';
import '../model/user_model.dart';


class AppController extends GetxController {
  final KiwiContainer container = KiwiContainer();
  final MovieListController movieListController =
  Get.put(MovieListController(), permanent: true);
  Api api = Get.find<Api>();

  RxBool isLoading = true.obs;
  User? userData;

  @override
  onReady() async {
    movieListController.getNowPlayingMovies();
    loadUserData();
    super.onReady();
  }

  void loadUserData() async {
    final user = await fetchUserData();
    userData = user;
    isLoading.value = false;

  }

  Future<User> fetchUserData() async {
    final jsonStr = await rootBundle.loadString('assets/user_data.json');
    final jsonData = json.decode(jsonStr);
    return User.fromJson(jsonData);
  }

  void logOut() {
    push(page:  LogInScreen());
  }

}
