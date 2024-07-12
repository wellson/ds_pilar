import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';

abstract class IGetMoviesDatasource {
  Future<List<MovieEntity?>?> getMoviesTrendingDay();
  Future<List<MovieEntity?>?> getMoviesTrendingWeek();
  Future<List<MovieEntity?>?> getMoviesPopular();
  Future<List<SearchEntity?>?> searchMulti(String value);
}
