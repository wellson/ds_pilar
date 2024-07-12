import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/home/domain/repositories/i_get_movies_repository.dart';
import 'package:tmdb_app/modules/home/domain/usecase/get_movies_usecase.dart';

Future usecaseHome() async {
  inject.registerLazySingleton<IGetMoviesUsecase>(
    () => GetMoviesUsecase(
      getMoviesRepository: inject.get<IGetMoviesRepository>(),
    ),
  );
}
