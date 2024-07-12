import 'package:flutter/material.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({
    super.key,
    required this.movieDetail,
  });
  final MovieDetailEntity movieDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Gêneros',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: movieDetail.genres!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var genre = movieDetail.genres![index];
                    bool isLast = (index + 1) == movieDetail.genres!.length;
                    return Container(
                      child: Text('${genre.name!}${isLast ? '.' : ', '}'),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
