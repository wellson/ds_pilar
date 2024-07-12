import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';
import 'package:tmdb_app/modules/home/domain/repositories/i_get_movies_repository.dart';

abstract class IGetMoviesUsecase {
  Future<List<MovieEntity?>?> getMoviesTrendingDay();
  Future<List<MovieEntity?>?> getMoviesTrendingWeek();
  Future<List<MovieEntity?>?> getMoviesPopular();
  Future<List<SearchEntity?>?> searchMulti(String value);
}

class GetMoviesUsecase implements IGetMoviesUsecase {
  final IGetMoviesRepository _getMoviesRepository;

  GetMoviesUsecase({
    required IGetMoviesRepository getMoviesRepository,
  }) : _getMoviesRepository = getMoviesRepository;

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingDay() async =>
      await _getMoviesRepository.getMoviesTrendingDay();

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingWeek() async =>
      await _getMoviesRepository.getMoviesTrendingWeek();

  @override
  Future<List<MovieEntity?>?> getMoviesPopular() async =>
      await _getMoviesRepository.getMoviesPopular();
  
  @override
  Future<List<SearchEntity?>?> searchMulti(String value) async =>
      await _getMoviesRepository.searchMulti(value);
}
