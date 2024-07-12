import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/home/data/datasource/get_movies_datasource.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';

import '../../../../utils/mocks/mocks.mocks.dart';

void main() {
  test('description', () async {
    MockDioClient dioClient = MockDioClient();

    GetMoveisDatasource getMoveisDatasource =
        GetMoveisDatasource(dioClient: dioClient);

    dynamic response =
        await getMoveisDatasource.getMoviesPopular();

    expect(response, List<MovieEntity>);
  });
}
