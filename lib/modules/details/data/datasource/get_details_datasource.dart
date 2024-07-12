// ignore_for_file: body_might_complete_normally_nullable

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/core/network/custom_dio_datasource.dart';
import 'package:tmdb_app/modules/details/data/models/movies/credits_details_model.dart';
import 'package:tmdb_app/modules/details/data/models/movies/movie_detail_model.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';
import 'package:tmdb_app/modules/details/infra/datasource/i_get_movies_datasource.dart';

class GetDetailsDatasource implements IGetDetailsDatasource {
  final DioClient dioClient;

  GetDetailsDatasource({
    required this.dioClient,
  });

  @override
  Future<MovieDetailEntity?> getDetailsMovie(int idMovie) async {
    try {
      var uri = Uri.parse(
          '${ApiRoutes.detailsMovie}$idMovie?${ApiRoutes.languagePtBr}');

      final response = await dioClient.get('$uri',
          options:
              Options(headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final movie = MovieDetailModel.fromJson(res);
        return movie;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<MovieDetailEntity?> getDetailsTv(int idTv) async {
    try {
      var uri =
          Uri.parse('${ApiRoutes.detailsTv}$idTv?${ApiRoutes.languagePtBr}');

      final response = await dioClient.get('$uri',
          options:
              Options(headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final movie = MovieDetailModel.fromJson(res);
        return movie;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<List<CreditsDetailEntity?>?> getCreditsMovie(int idMovie) async {
    try {
      var uri = Uri.parse(
          '${ApiRoutes.detailsMovie}$idMovie/credits?${ApiRoutes.languagePtBr}');

      final response = await dioClient.get('$uri',
          options:
              Options(headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<CreditsDetailEntity?> credits = (res['cast'] as List)
            .map((e) => CreditsDetailsModel.fromJson(e))
            .toList();

        final List<CreditsDetailsModel> crew = (res['crew'] as List)
            .map((e) => CreditsDetailsModel.fromJson(e))
            .toList();
        credits.addAll(crew);

        return credits;
      }
    } catch (e) {
      StackOverflowError();
    }
  }

  @override
  Future<List<CreditsDetailEntity?>?> getCreditsTv(int idTv) async {
    try {
      var uri = Uri.parse(
          '${ApiRoutes.detailsTv}$idTv/credits?${ApiRoutes.languagePtBr}');

      final response = await dioClient.get('$uri',
          options:
              Options(headers: {HttpHeaders.authorizationHeader: ApiRoutes.API_KEY}));
      var res = await response.data;

      if (res != null) {
        final List<CreditsDetailsModel> credits = (res['cast'] as List)
            .map((e) => CreditsDetailsModel.fromJson(e))
            .toList();

        final List<CreditsDetailsModel> crew = (res['crew'] as List)
            .map((e) => CreditsDetailsModel.fromJson(e))
            .toList();
        credits.addAll(crew);

        return credits;
      }
    } catch (e) {
      StackOverflowError();
    }
  }
}
