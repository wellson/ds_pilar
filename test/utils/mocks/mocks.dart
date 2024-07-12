import 'package:mockito/annotations.dart';
import 'package:tmdb_app/core/network/custom_dio_datasource.dart';
import 'package:tmdb_app/modules/details/domain/repositories/i_get_details_repository.dart';
import 'package:tmdb_app/modules/details/domain/usecase/get_details_usecase.dart';
import 'package:tmdb_app/modules/details/infra/datasource/i_get_movies_datasource.dart';
import 'package:tmdb_app/modules/home/domain/repositories/i_get_movies_repository.dart';
import 'package:tmdb_app/modules/home/domain/usecase/get_movies_usecase.dart';
import 'package:tmdb_app/modules/home/infra/datasource/i_get_movies_datasource.dart';

@GenerateMocks([
  DioClient,
  IGetMoviesDatasource,
  IGetDetailsDatasource,
  IGetMoviesRepository,
  IGetDetailsRepository,
  IGetMoviesUsecase,
  IGetDetailsUsecase,
])
void main() {}
