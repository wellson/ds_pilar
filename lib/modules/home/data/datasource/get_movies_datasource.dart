// ignore_for_file: body_might_complete_normally_nullable

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/core/network/custom_dio_datasource.dart';
import 'package:tmdb_app/modules/home/data/models/movies/movie_model.dart';
import 'package:tmdb_app/modules/home/data/models/movies/search_model.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';
import 'package:tmdb_app/modules/home/infra/datasource/i_get_movies_datasource.dart';

class GetMoveisDatasource implements IGetMoviesDatasource {
  final DioClient dioClient;

  GetMoveisDatasource({
    required this.dioClient,
  });

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingDay() async {
    try {
      var uri = Uri.parse(ApiRoutes.trendingDay);

      final response = await dioClient.get('$uri',
          options: Options(
              headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<MovieModel> movies = (res['results'] as List)
            .map((e) => MovieModel.fromJson(e))
            .toList();

        return movies;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<List<MovieEntity?>?> getMoviesTrendingWeek() async {
    try {
      var uri = Uri.parse(ApiRoutes.trendingWeek);

      final response = await dioClient.get('$uri',
          options: Options(
              headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<MovieModel> movies = (res['results'] as List)
            .map((e) => MovieModel.fromJson(e))
            .toList();

        return movies;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<List<MovieEntity?>?> getMoviesPopular() async {
    try {
      var uri = Uri.parse(ApiRoutes.popular);

      final response = await dioClient.get('$uri',
          options: Options(
              headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<MovieModel> movies = (res['results'] as List)
            .map((e) => MovieModel.fromJson(e))
            .toList();

        return movies;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<List<SearchEntity?>?> searchMulti(String value) async {
    try {
      var uri =
          Uri.parse('${ApiRoutes.searchMulti}$value&${ApiRoutes.languagePtBr}');

      final response = await dioClient.get('$uri',
          options: Options(
              headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<SearchModel> search = (res['results'] as List)
            .map((e) => SearchModel.fromJson(e))
            .toList();

        return search;
      }
    } catch (e) {
      StackOverflowError();
    }
  }
}
