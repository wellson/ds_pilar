import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/details/domain/repositories/i_get_details_repository.dart';
import 'package:tmdb_app/modules/details/domain/usecase/get_details_usecase.dart';

Future usecaseDetails() async {
  inject.registerLazySingleton<IGetDetailsUsecase>(
    () => GetDetailsUsecase(
      getDetailsRepository: inject.get<IGetDetailsRepository>(),
    ),
  );
}
