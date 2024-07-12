import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/repositories/i_get_details_repository.dart';

abstract class IGetDetailsUsecase {
  Future<MovieDetailEntity?> getDetailsMovie(int idMovie);
  Future<MovieDetailEntity?> getDetailsTv(int idTv);
  Future<List<CreditsDetailEntity?>?> getCreditsMovie(int idMovie);
  Future<List<CreditsDetailEntity?>?> getCreditsTv(int idTv);
}

class GetDetailsUsecase implements IGetDetailsUsecase {
  final IGetDetailsRepository _getDetailsRepository;

  GetDetailsUsecase({
    required IGetDetailsRepository getDetailsRepository,
  }) : _getDetailsRepository = getDetailsRepository;

  @override
  Future<MovieDetailEntity?> getDetailsMovie(int idMovie) async =>
      await _getDetailsRepository.getDetailsMovie(idMovie);

  @override
  Future<MovieDetailEntity?> getDetailsTv(int idTv) async =>
      await _getDetailsRepository.getDetailsTv(idTv);
  @override
  Future<List<CreditsDetailEntity?>?> getCreditsMovie(int idMovie) async =>
      await _getDetailsRepository.getCreditsMovie(idMovie);

  @override
  Future<List<CreditsDetailEntity?>?> getCreditsTv(int idTv) async =>
      await _getDetailsRepository.getCreditsTv(idTv);
}
