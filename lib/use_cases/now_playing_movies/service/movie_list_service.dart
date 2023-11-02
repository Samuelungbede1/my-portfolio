import 'package:dio/dio.dart';
import '../../../api/app_response.dart';
import '../model/now_playing/NowPlaying.dart';
import '../repository/movie_list_repository.dart';


class MovieListService {
  MovieListRepository movieRepository;

  MovieListService(this.movieRepository);

  Future<AppResponse<NowPlaying>> getNowPlayingMovies () async {
    Response response = await movieRepository.getNowPlayingMovies();
    int statusCode = response.statusCode ?? 000;
    Map<String, dynamic> responseBody = response.data;

    if(statusCode >= 200 && statusCode <= 300){
      return AppResponse(true, statusCode, responseBody, NowPlaying.fromJson(responseBody));
    }
    return AppResponse(false, statusCode, responseBody);
  }



}