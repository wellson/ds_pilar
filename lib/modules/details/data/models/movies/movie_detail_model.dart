import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';

class MovieDetailModel extends MovieDetailEntity {
  MovieDetailModel({
    required super.adult,
    required super.backdropPath,
    required super.belongsToCollection,
    required super.budget,
    required super.genres,
    required super.homepage,
    required super.id,
    required super.imdbId,
    required super.originCountry,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.posterPath,
    required super.productionCompanies,
    required super.productionCountries,
    required super.releaseDate,
    required super.revenue,
    required super.runtime,
    required super.spokenLanguages,
    required super.status,
    required super.tagline,
    required super.title,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
    required super.createdBy,
    required super.episodeRunTime,
    required super.firstAirDate,
    required super.lastAirDate,
    required super.inProduction,
    required super.lastEpisodeToAir,
    required super.name,
    required super.nextEpisodeToAir,
    required super.networks,
    required super.numberOfEpisodes,
    required super.numberOfSeasons,
    required super.seasons,
    required super.type,
  });

  static MovieDetailModel fromJson(Map<String, dynamic> json) {
    List<GenresModel> listGenres = [];
    if (json['genres'] != null) {
      json['genres'].forEach((value) {
        listGenres.add(GenresModel.fromJson(value));
      });
    }

    List<ProductionCompaniesModel> listProductionCompanies = [];
    if (json['production_companies'] != null) {
      json['production_companies'].forEach((value) {
        listProductionCompanies.add(ProductionCompaniesModel.fromJson(value));
      });
    }

    List<ProductionCountryModel> listProductionCountry = [];
    if (json['production_country'] != null) {
      json['production_country'].forEach((value) {
        listProductionCountry.add(ProductionCountryModel.fromJson(value));
      });
    }

    List<SpokenLanguagesModel> listSpokenLanguages = [];
    if (json['spoken_languages'] != null) {
      json['spoken_languages'].forEach((value) {
        listSpokenLanguages.add(SpokenLanguagesModel.fromJson(value));
      });
    }

    List<CreatedByModel> listCreatedBy = [];
    if (json['created_by'] != null) {
      json['created_by'].forEach((value) {
        listCreatedBy.add(CreatedByModel.fromJson(value));
      });
    }

    List<NetworksModel> listNetworks = [];
    if (json['networks'] != null) {
      json['networks'].forEach((value) {
        listNetworks.add(NetworksModel.fromJson(value));
      });
    }
    List<SeasonsModel> listSeasons = [];
    if (json['seasons'] != null) {
      json['seasons'].forEach((value) {
        listSeasons.add(SeasonsModel.fromJson(value));
      });
    }

    return MovieDetailModel(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? '',
      belongsToCollection: json['belongs_to_collection'] != null
          ? BelongsToCollectionModel.fromJson(json['belongs_to_collection'])
          : null,
      budget: json['budget'] ?? 0,
      genres: listGenres,
      homepage: json['homepage'] ?? '',
      id: json['id'],
      imdbId: json['imdb_id'] ?? '',
      originCountry: json['origin_country'] ?? [],
      originalLanguage: json['original_language'] ?? '',
      originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      popularity: json['popularity'],
      posterPath: json['poster_path'] ?? '',
      productionCompanies: listProductionCompanies,
      productionCountries: listProductionCountry,
      releaseDate: json['release_date'] ?? '',
      revenue: json['revenue'] ?? 0,
      runtime: json['runtime'] ?? 0,
      spokenLanguages: listSpokenLanguages,
      status: json['status'] ?? '',
      tagline: json['tagline'] ?? '',
      title: json['title'] ?? '',
      video: json['video'] ?? false,
      voteAverage: json['vote_average'] ?? 0,
      voteCount: json['vote_count'] ?? 0,
      createdBy: listCreatedBy,
      episodeRunTime: json['episode_run_time'] ?? [],
      firstAirDate: json['first_air_date'] ?? '',
      inProduction: json['in_production'] ?? false,
      lastAirDate: json['last_air_date'] ?? '',
      lastEpisodeToAir: json['last_episode_to_air'] != null
          ? LastEpisodeToAirModel.fromJson(json['last_episode_to_air'])
          : null,
      name: json['name'] ?? '',
      networks: listNetworks,
      nextEpisodeToAir: json['next_episode_to_air'] != null
          ? NextEpisodeToAirModel.fromJson(json['next_episode_to_air'])
          : null,
      numberOfEpisodes: json['number_of_episodes'] ?? 0,
      numberOfSeasons: json['number_of_seasons'] ?? 0,
      seasons: listSeasons,
      type: json['type'] ?? '',
    );
  }
}

class GenresModel extends GenresEntity {
  GenresModel({required super.id, required super.name});
  static GenresModel fromJson(Map<String, dynamic> json) {
    return GenresModel(
      id: json['id'],
      name: json['name'],
    );
  }
}

class SeasonsModel extends SeasonsEntity {
  SeasonsModel({
    required super.airDate,
    required super.episodeCount,
    required super.id,
    required super.name,
    required super.overview,
    required super.posterPath,
    required super.seasonNumber,
    required super.voteAverage,
  });
  static SeasonsModel fromJson(Map<String, dynamic> json) {
    return SeasonsModel(
      airDate: json['air_date'] ?? '',
      episodeCount: json['episode_count'] ?? 0,
      id: json['id'],
      name: json['name'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'] ?? '',
      seasonNumber: json['season_number'] ?? 0,
      voteAverage: json['vote_average'] ?? 0.0,
    );
  }
}

class NetworksModel extends NetworksEntity {
  NetworksModel({
    required super.id,
    required super.logoPath,
    required super.name,
    required super.originCountry,
  });
  static NetworksModel fromJson(Map<String, dynamic> json) {
    return NetworksModel(
      id: json['id'],
      logoPath: json['logo_path'],
      name: json['name'],
      originCountry: json['origin_country'],
    );
  }
}

class NextEpisodeToAirModel extends NextEpisodeToAirEntity {
  NextEpisodeToAirModel({
    required super.id,
    required super.name,
    required super.overview,
    required super.voteAverage,
    required super.voteCount,
    required super.airDate,
    required super.episodeNumber,
    required super.episodeType,
    required super.productionCode,
    required super.runtime,
    required super.seasonNumber,
    required super.showId,
    required super.stillPath,
  });
  static NextEpisodeToAirModel fromJson(Map<String, dynamic> json) {
    return NextEpisodeToAirModel(
      id: json['id'],
      name: json['name'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
      airDate: json['air_date'],
      episodeNumber: json['episode_number'],
      episodeType: json['episode_type'],
      productionCode: json['production_code'],
      runtime: json['runtime'],
      seasonNumber: json['season_number'],
      showId: json['show_id'],
      stillPath: json['still_path'],
    );
  }
}

class LastEpisodeToAirModel extends LastEpisodeToAirEntity {
  LastEpisodeToAirModel({
    required super.id,
    required super.name,
    required super.overview,
    required super.voteAverage,
    required super.voteCount,
    required super.airDate,
    required super.episodeNumber,
    required super.episodeType,
    required super.productionCode,
    required super.runtime,
    required super.seasonNumber,
    required super.showId,
    required super.stillPath,
  });
  static LastEpisodeToAirModel fromJson(Map<String, dynamic> json) {
    return LastEpisodeToAirModel(
      id: json['id'],
      name: json['name'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
      airDate: json['air_date'],
      episodeNumber: json['episode_number'],
      episodeType: json['episode_type'],
      productionCode: json['production_code'],
      runtime: json['runtime'],
      seasonNumber: json['season_number'],
      showId: json['show_id'],
      stillPath: json['still_path'],
    );
  }
}

class CreatedByModel extends CreatedByEntity {
  CreatedByModel({
    required super.id,
    required super.creditId,
    required super.name,
    required super.originalName,
    required super.gender,
    required super.profilePath,
  });
  static CreatedByModel fromJson(Map<String, dynamic> json) {
    return CreatedByModel(
      id: json['id'],
      creditId: json['credit_id'] ?? '',
      name: json['name'] ?? '',
      originalName: json['original_name'] ?? '',
      gender: json['gender'],
      profilePath: json['profile_path'] ?? '',
    );
  }
}

class BelongsToCollectionModel extends BelongsToCollectionEntity {
  BelongsToCollectionModel({
    required super.id,
    required super.name,
    required super.posterPath,
    required super.backdropPath,
  });
  static BelongsToCollectionModel fromJson(Map<String, dynamic> json) {
    return BelongsToCollectionModel(
      id: json['id'],
      name: json['name'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
    );
  }
}

class ProductionCompaniesModel extends ProductionCompaniesEntity {
  ProductionCompaniesModel({
    required super.id,
    required super.logoPath,
    required super.name,
    required super.originCountry,
  });
  static ProductionCompaniesModel fromJson(Map<String, dynamic> json) {
    return ProductionCompaniesModel(
      id: json['id'],
      logoPath: json['logo_path'] ?? '',
      name: json['name'] ?? '',
      originCountry: json['origin_country'] ?? '',
    );
  }
}

class ProductionCountryModel extends ProductionCountriesEntity {
  ProductionCountryModel({
    required super.iso31661,
    required super.name,
  });

  static ProductionCountryModel fromJson(Map<String, dynamic> json) {
    return ProductionCountryModel(
      iso31661: json['iso_3166_1'] ?? '',
      name: json['name'] ?? '',
    );
  }
}

class SpokenLanguagesModel extends SpokenLanguagesEntity {
  SpokenLanguagesModel({
    required super.englishName,
    required super.iso6391,
    required super.name,
  });

  static SpokenLanguagesModel fromJson(Map<String, dynamic> json) {
    return SpokenLanguagesModel(
      englishName: json['english_name'] ?? '',
      iso6391: json['iso_639_1'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
