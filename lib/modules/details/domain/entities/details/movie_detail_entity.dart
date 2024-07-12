class MovieDetailEntity {
  final bool? adult;
  final String? backdropPath;
  final BelongsToCollectionEntity? belongsToCollection;
  final int? budget;
  final List<GenresEntity>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final List? originCountry;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompaniesEntity?> productionCompanies;
  final List<ProductionCountriesEntity?> productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguagesEntity?> spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  final List<CreatedByEntity?> createdBy;
  final List? episodeRunTime;
  final String? firstAirDate;
  final String? lastAirDate;
  final bool? inProduction;
  final LastEpisodeToAirEntity? lastEpisodeToAir;
  final String? name;
  final NextEpisodeToAirEntity? nextEpisodeToAir;
  final List<NetworksEntity?> networks;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<SeasonsEntity?>? seasons;
  final String? type;

  MovieDetailEntity({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.createdBy,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.lastAirDate,
    required this.inProduction,
    required this.lastEpisodeToAir,
    required this.name,
    required this.nextEpisodeToAir,
    required this.networks,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.seasons,
    required this.type,
  });
}

class GenresEntity {
  final int? id;
  final String? name;

  GenresEntity({required this.id, required this.name});
}

class SeasonsEntity {
  final String? airDate;
  final int? episodeCount;
  final int? id;
  final String? name;
  final String? overview;
  final String? posterPath;
  final int? seasonNumber;
  final double? voteAverage;

  SeasonsEntity(
      {required this.airDate,
      required this.episodeCount,
      required this.id,
      required this.name,
      required this.overview,
      required this.posterPath,
      required this.seasonNumber,
      required this.voteAverage});
}

class NetworksEntity {
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  NetworksEntity({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });
}

class NextEpisodeToAirEntity {
  final int? id;
  final String? name;
  final String? overview;
  final double? voteAverage;
  final int? voteCount;
  final String? airDate;
  final int? episodeNumber;
  final String? episodeType;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;

  NextEpisodeToAirEntity({
    required this.id,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
  });
}

class LastEpisodeToAirEntity {
  final int? id;
  final String? name;
  final String? overview;
  final double? voteAverage;
  final int? voteCount;
  final String? airDate;
  final int? episodeNumber;
  final String? episodeType;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;

  LastEpisodeToAirEntity({
    required this.id,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
  });
}

class CreatedByEntity {
  final int id;
  final String? creditId;
  final String? name;
  final String? originalName;
  final int? gender;
  final String? profilePath;

  CreatedByEntity(
      {required this.id,
      required this.creditId,
      required this.name,
      required this.originalName,
      required this.gender,
      required this.profilePath});
}

class BelongsToCollectionEntity {
  final int id;
  final String? name;
  final String? posterPath;
  final String? backdropPath;

  BelongsToCollectionEntity(
      {required this.id,
      required this.name,
      required this.posterPath,
      required this.backdropPath});
}

class ProductionCompaniesEntity {
  final int id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  ProductionCompaniesEntity(
      {required this.id,
      required this.logoPath,
      required this.name,
      required this.originCountry});
}

class ProductionCountriesEntity {
  final String? iso31661;
  final String? name;

  ProductionCountriesEntity({required this.iso31661, required this.name});
}

class SpokenLanguagesEntity {
  final String? englishName;
  final String? iso6391;
  final String? name;

  SpokenLanguagesEntity(
      {required this.englishName, required this.iso6391, required this.name});
}
