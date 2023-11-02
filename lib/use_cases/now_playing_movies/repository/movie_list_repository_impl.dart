import 'package:dio/dio.dart';

import '../../../api/api.dart';
import '../../../api/api_constants.dart';
import 'movie_list_repository.dart';

class MoviesListRepositoryImpl implements MovieListRepository {
   final Api api;
   MoviesListRepositoryImpl(this.api);

  @override
  getNowPlayingMovies() async {
     try{
       return await api.dio.get(popularMovies);
     } on DioError catch (e) {
       return api.handleError(e);
     }
  }

}