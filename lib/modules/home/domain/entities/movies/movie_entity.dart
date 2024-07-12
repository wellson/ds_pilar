class MovieEntity {
  final bool? adult;
  final String? backdropPath;
  final List? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final String? name;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  final String? mediaTipe;
  final List? originCountry;
  final String? firstAirDate;

  MovieEntity({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.name,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.mediaTipe,
    required this.originCountry,
    required this.firstAirDate,
  });
}
