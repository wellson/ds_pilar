import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/details/domain/repositories/i_get_details_repository.dart';
import 'package:tmdb_app/modules/details/infra/datasource/i_get_movies_datasource.dart';
import 'package:tmdb_app/modules/details/infra/repositories/get_details_repository.dart';

Future repositoryDetails() async {
  inject.registerLazySingleton<IGetDetailsRepository>(
    () => GetDetailsRepository(
        getDetailsDatasource: inject.get<IGetDetailsDatasource>()),
  );
}
