

import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/model/movie/Movie.dart';


import '../../../api/api.dart';
import '../../../api/app_response.dart';
import '../model/now_playing/NowPlaying.dart';
import '../service/movie_list_service.dart';

class MovieListController extends GetxController {
  late Api api;

  final KiwiContainer _container = KiwiContainer();
  late MovieListService movieListService = _container.resolve<MovieListService>();

  AppResponse<NowPlaying>? nowPlayingMovieModel;
  RxList<Results> results = <Results>[].obs;


  getNowPlayingMovies() async {
    AppResponse<NowPlaying> nowPlayingMovies = await movieListService.getNowPlayingMovies();
    if(nowPlayingMovies.isSuccess){
      nowPlayingMovieModel = nowPlayingMovies;
      results.assignAll(nowPlayingMovies!.data!.results!);
    }
  }

}