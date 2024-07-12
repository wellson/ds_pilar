import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    required super.adult,
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.name,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
    required super.mediaTipe,
    required super.originCountry,
    required super.firstAirDate,
  });

  static MovieModel fromJson(Map<String, dynamic> json) {
    return MovieModel(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'],
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'] ?? '',
      title: json['title'],
      name: json['name'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
      mediaTipe: json['media_type'] ?? '',
      originCountry: json['origin_country'] ?? [],
      firstAirDate: json['first_air_date'] ?? '',
    );
  }
}
