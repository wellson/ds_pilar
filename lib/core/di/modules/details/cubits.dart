import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/home/domain/usecase/get_movies_usecase.dart';
import 'package:tmdb_app/modules/home/presenter/cubit/home_cubit.dart';

Future cubitHome() async {
  inject.registerFactory<HomeCubit>(
    () => HomeCubit(
      getMoviesUsecase: inject.get<IGetMoviesUsecase>(),
    ),
  );
}
