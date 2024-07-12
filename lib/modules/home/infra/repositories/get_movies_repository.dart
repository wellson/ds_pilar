import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';
import 'package:tmdb_app/modules/home/domain/repositories/i_get_movies_repository.dart';
import 'package:tmdb_app/modules/home/infra/datasource/i_get_movies_datasource.dart';

class GetMoviesRepository implements IGetMoviesRepository {
  final IGetMoviesDatasource _getMoviesDatasource;

  GetMoviesRepository({required IGetMoviesDatasource getMoviesDatasource})
      : _getMoviesDatasource = getMoviesDatasource;

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingDay() async =>
      await _getMoviesDatasource.getMoviesTrendingDay();

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingWeek() async =>
      await _getMoviesDatasource.getMoviesTrendingWeek();

  @override
  Future<List<MovieEntity?>?> getMoviesPopular() async =>
      await _getMoviesDatasource.getMoviesPopular();

  @override
  Future<List<SearchEntity?>?> searchMulti(String value) async =>
      await _getMoviesDatasource.searchMulti(value);
}
