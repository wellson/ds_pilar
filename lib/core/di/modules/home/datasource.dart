import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/core/network/custom_dio_datasource.dart';
import 'package:tmdb_app/modules/home/data/datasource/get_movies_datasource.dart';
import 'package:tmdb_app/modules/home/infra/datasource/i_get_movies_datasource.dart';

Future datasourceHome() async {
  inject.registerLazySingleton<IGetMoviesDatasource>(
    () => GetMoveisDatasource(
      dioClient: inject.get<DioClient>(),
    ),
  );
  inject.registerLazySingleton<DioClient>(DioClient.new);
}
