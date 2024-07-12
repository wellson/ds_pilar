import 'package:flutter/material.dart';
import 'package:tmdb_app/modules/details/presenter/pages/details_page.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/presenter/widgets/movie_card.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({
    super.key,
    required this.moviesList,
    this.isMovie,
  });

  final List<MovieEntity?> moviesList;
  final bool? isMovie;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: moviesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var movies = moviesList[index]!;
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          id: movies.id!,
                          isMovie: isMovie ?? movies.mediaTipe == 'movie'
                              ? true
                              : false,
                        ),
                      ),
                    );
                  },
                  child: MovieCard(movies: movies),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
