import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/core/network/custom_dio_datasource.dart';
import 'package:tmdb_app/modules/details/data/datasource/get_details_datasource.dart';
import 'package:tmdb_app/modules/details/infra/datasource/i_get_movies_datasource.dart';

Future datasourceDetails() async {
  inject.registerLazySingleton<IGetDetailsDatasource>(
    () => GetDetailsDatasource(
      dioClient: inject.get<DioClient>(),
    ),
  );
}
