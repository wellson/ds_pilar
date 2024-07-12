import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/usecase/get_movies_usecase.dart';
import 'package:tmdb_app/modules/home/presenter/cubit/home_cubit.dart';

import '../../../../utils/mocks/mocks.mocks.dart';

void main() {
  late final IGetMoviesUsecase mockMovieUsecases;

  late final MovieEntity? tMovieEntity;
  late final MovieEntity? tMovieEntity2;
  late final MovieEntity? tMovieEntity3;
  late final MovieEntity? tMovieEntity4;

  setUpAll(() {
    mockMovieUsecases = MockIGetMoviesUsecase();

    tMovieEntity = MovieEntity(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [],
      id: 1,
      originalLanguage: 'originalLanguage',
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 00.01,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      name: 'name',
      video: false,
      voteAverage: 00.00,
      voteCount: 0,
      mediaTipe: 'mediaTipe',
      originCountry: [],
      firstAirDate: 'firstAirDate',
    );

    tMovieEntity2 = MovieEntity(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [],
      id: 2,
      originalLanguage: 'originalLanguage',
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 00.01,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      name: 'name',
      video: false,
      voteAverage: 00.00,
      voteCount: 0,
      mediaTipe: 'mediaTipe',
      originCountry: [],
      firstAirDate: 'firstAirDate',
    );

    tMovieEntity3 = MovieEntity(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [],
      id: 3,
      originalLanguage: 'originalLanguage',
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 00.01,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      name: 'name',
      video: false,
      voteAverage: 00.00,
      voteCount: 0,
      mediaTipe: 'mediaTipe',
      originCountry: [],
      firstAirDate: 'firstAirDate',
    );
    tMovieEntity4 = MovieEntity(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [],
      id: 4,
      originalLanguage: 'originalLanguage',
      originalTitle: 'originalTitle',
      overview: 'overview',
      popularity: 00.01,
      posterPath: 'posterPath',
      releaseDate: 'releaseDate',
      title: 'title',
      name: 'name',
      video: false,
      voteAverage: 00.00,
      voteCount: 0,
      mediaTipe: 'mediaTipe',
      originCountry: [],
      firstAirDate: 'firstAirDate',
    );
  });

  blocTest<HomeCubit, HomeState>(
    'should emit [GetPopularMoviesLoading, GetPopularMoviesLoaded] when success with different movie details in the response body',
    setUp: () {
      List<MovieEntity?> moviesDay = [
        tMovieEntity,
        tMovieEntity2,
        tMovieEntity3,
        tMovieEntity4
      ];
      List<MovieEntity?> moviesWeek = [
        tMovieEntity,
        tMovieEntity2,
        tMovieEntity3,
        tMovieEntity4
      ];
      List<MovieEntity?> moviesPop = [
        tMovieEntity,
        tMovieEntity2,
        tMovieEntity3,
        tMovieEntity4
      ];

      when(mockMovieUsecases.getMoviesTrendingDay())
          .thenAnswer((_) async => moviesDay);

      when(mockMovieUsecases.getMoviesTrendingWeek())
          .thenAnswer((_) async => moviesWeek);

      when(mockMovieUsecases.getMoviesPopular())
          .thenAnswer((_) async => moviesPop);
    },
    build: () => HomeCubit(getMoviesUsecase: mockMovieUsecases),
    act: (bloc) => bloc.init(),
    expect: () => [
      HomeLoading(),
      HomeSuccess(
        moviesTrendDay: [
          tMovieEntity,
          tMovieEntity2,
          tMovieEntity3,
          tMovieEntity4
        ],
        moviesTrendWeek: [
          tMovieEntity,
          tMovieEntity2,
          tMovieEntity3,
          tMovieEntity4
        ],
        moviesPop: [tMovieEntity, tMovieEntity2, tMovieEntity3, tMovieEntity4],
        isToday: false,
      ),
    ],
  );
}
