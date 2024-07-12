import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';

abstract class IGetDetailsDatasource {
  Future<MovieDetailEntity?> getDetailsMovie(int idMovie);
  Future<MovieDetailEntity?> getDetailsTv(int idTv);
  Future<List<CreditsDetailEntity?>?> getCreditsMovie(int idMovie);
  Future<List<CreditsDetailEntity?>?> getCreditsTv(int idTv);
}
