import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/details/domain/usecase/get_details_usecase.dart';
import 'package:tmdb_app/modules/details/presenter/cubit/details_cubit.dart';

Future cubitDetails() async {
  inject.registerFactory<DetailsCubit>(
    () => DetailsCubit(
      geDetailssUsecase: inject.get<IGetDetailsUsecase>(),
    ),
  );
}
