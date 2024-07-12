
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_app/core/widgets/percent_indicator.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
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
        Text(
          movieDetail.title!.isNotEmpty ? movieDetail.title! : movieDetail.name!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('(${DateFormat.y('pt_BR').format(DateTime.parse(
          '${movieDetail.releaseDate!.isNotEmpty ? movieDetail.releaseDate : movieDetail.firstAirDate}',
        ))})'),
        SizedBox(height: 10),
        Container(child: Text('${movieDetail.tagline}')),
        SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: PercentIndicator(
                  value: double.parse('${movieDetail.voteAverage! / 10}')),
            ),
            SizedBox(width: 8),
            Flexible(
              flex: 3,
              child: Text(
                'Avaliação dos usuários',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        movieDetail.createdBy.isNotEmpty
            ? Container(child: Text('Criado por:'))
            : Container(),
        SizedBox(
          height: 50,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  itemCount: movieDetail.createdBy.length,
                  itemBuilder: (context, index) {
                    var createdBy = movieDetail.createdBy[index];
                    return Text(
                      createdBy!.name!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

