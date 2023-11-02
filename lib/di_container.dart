
import 'package:kiwi/kiwi.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/repository/movie_list_repository.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/repository/movie_list_repository_impl.dart';
import 'package:my_portfolio/use_cases/now_playing_movies/service/movie_list_service.dart';
import 'package:my_portfolio/utils/app_formatter.dart';

import 'api/api.dart';

part 'di_container.g.dart';

abstract class Injector {
  @Register.factory(AppFormatter)
  @Register.factory(MovieListService)
  @Register.singleton(MovieListRepository, from: MoviesListRepositoryImpl)
  void common();
}

void setupDependencyInjector() {
  var injector = _$Injector();
  injector.common();
}
