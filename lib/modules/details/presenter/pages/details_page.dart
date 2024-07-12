import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/core/network/api_routes.dart';
import 'package:tmdb_app/modules/details/presenter/cubit/details_cubit.dart';
import 'package:tmdb_app/modules/details/presenter/widgets/credits_widget.dart';
import 'package:tmdb_app/modules/details/presenter/widgets/description_widget.dart';
import 'package:tmdb_app/modules/details/presenter/widgets/genres_widget.dart';
import 'package:tmdb_app/modules/details/presenter/widgets/poster_widget.dart';
import 'package:tmdb_app/modules/details/presenter/widgets/sinopse_widget.dart';

class DetailsPage extends StatefulWidget {
  final int id;
  final bool isMovie;
  const DetailsPage({
    Key? key,
    required this.id,
    required this.isMovie,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final cubit = inject.get<DetailsCubit>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await cubit.init(widget.id, widget.isMovie);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        body: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            if (state is DetailsLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is DetailsSuccess) {
              return Padding(
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 4,
                            child: PosterWidget(
                              posterPath:
                                  '${ApiRoutes.image}${state.movie.posterPath}',
                            ),
                          ),
                          SizedBox(width: 12),
                          Flexible(
                            flex: 5,
                            child: DescriptionWidget(
                              movieDetail: state.movie,
                            ),
                          ),
                        ],
                      ),
                      GenresWidget(
                        movieDetail: state.movie,
                      ),
                      SizedBox(height: 20),
                      SinopseWidget(
                        overview: '${state.movie.overview}',
                      ),
                      SizedBox(height: 20),
                      CreditsWidget(creditsList: state.credits),
                    ],
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
