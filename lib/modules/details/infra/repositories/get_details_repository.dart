import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/repositories/i_get_details_repository.dart';
import 'package:tmdb_app/modules/details/infra/datasource/i_get_movies_datasource.dart';

class GetDetailsRepository implements IGetDetailsRepository {
  final IGetDetailsDatasource _getDetailsDatasource;

  GetDetailsRepository({required IGetDetailsDatasource getDetailsDatasource})
      : _getDetailsDatasource = getDetailsDatasource;

  @override
  Future<MovieDetailEntity?> getDetailsMovie(int idMovie) async =>
      await _getDetailsDatasource.getDetailsMovie(idMovie);

  @override
  Future<MovieDetailEntity?> getDetailsTv(int idTv) async =>
      await _getDetailsDatasource.getDetailsTv(idTv);

  @override
  Future<List<CreditsDetailEntity?>?> getCreditsMovie(int idMovie) async =>
      await _getDetailsDatasource.getCreditsMovie(idMovie);

  @override
  Future<List<CreditsDetailEntity?>?> getCreditsTv(int idTv) async =>
      await _getDetailsDatasource.getCreditsTv(idTv);
}
