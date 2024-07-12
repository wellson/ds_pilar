import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/home/domain/repositories/i_get_movies_repository.dart';
import 'package:tmdb_app/modules/home/infra/datasource/i_get_movies_datasource.dart';
import 'package:tmdb_app/modules/home/infra/repositories/get_movies_repository.dart';

Future repositoryHome() async {
  inject.registerLazySingleton<IGetMoviesRepository>(
    () => GetMoviesRepository(
        getMoviesDatasource: inject.get<IGetMoviesDatasource>()),
  );
}
