// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'di_container.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void common() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => AppFormatter())
      ..registerFactory((c) => MovieListService(c<MovieListRepository>()))
      ..registerSingleton<MovieListRepository>(
          (c) => MoviesListRepositoryImpl(c<Api>()));
  }
}
