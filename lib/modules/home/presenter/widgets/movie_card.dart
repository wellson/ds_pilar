
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/core/widgets/percent_indicator.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movies,
  });

  final MovieEntity movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        width: 130,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          '${ApiRoutes.image}${movies.posterPath}',
                        ),
                      )),
                ),
                SizedBox(height: 12),
                Text(
                  movies.title != null ? movies.title! : movies.name!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('(${DateFormat.y('pt_BR').format(DateTime.parse(
                  '${movies.releaseDate!.isNotEmpty ? movies.releaseDate : movies.firstAirDate}',
                ))})'),
              ],
            ),
            Positioned(
              top: 150,
              left: 0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: PercentIndicator(
                    value: double.parse('${movies.voteAverage! / 10}')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
