import 'package:get_it/get_it.dart';
import 'package:tmdb_app/core/di/modules/details/cubits.dart';
import 'package:tmdb_app/core/di/modules/details/datasource.dart';
import 'package:tmdb_app/core/di/modules/details/repositories.dart';
import 'package:tmdb_app/core/di/modules/details/usecase.dart';
import 'package:tmdb_app/core/di/modules/home/cubits.dart';
import 'package:tmdb_app/core/di/modules/home/datasource.dart';
import 'package:tmdb_app/core/di/modules/home/repositories.dart';
import 'package:tmdb_app/core/di/modules/home/usecase.dart';

GetIt inject = GetIt.instance;

Future initDependencies() async {
  await initDatasource();
  await initRepository();
  await initUsecase();
  await initCubit();
}

Future initDatasource() async {
  await datasourceHome();
  await datasourceDetails();
}

Future initRepository() async {
  await repositoryHome();
  await repositoryDetails();
}

Future initUsecase() async {
  await usecaseHome();
  await usecaseDetails();
}

Future initCubit() async {
  await cubitHome();
  await cubitDetails();
}
