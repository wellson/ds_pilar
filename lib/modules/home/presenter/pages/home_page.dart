import 'package:flutter/material.dart';
import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/home/presenter/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_app/modules/home/presenter/widgets/movie_list_widget.dart';
import 'package:tmdb_app/modules/home/presenter/widgets/search_component.dart';
import 'package:tmdb_app/modules/home/presenter/widgets/search_page_widget.dart';
import 'package:tmdb_app/modules/home/presenter/widgets/tendencia_button_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cubit = inject.get<HomeCubit>();
  final TextEditingController _searchController = TextEditingController();
  bool isTodaySelected = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await cubit.init();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: SearchComponent(
            searchController: _searchController,
            onChanged: (value) {
              cubit.search(value);
            },
            onTapSuffixIcon: () {
              _searchController.clear();
              cubit.search('');
            },
            hintText: 'Busque por filmes, series ou pessoas',
          ),
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is HomeSearch) {
              return SearchPageWidget(searchMulti: state.searchMulti);
            }
            if (state is HomeSuccess) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TendenciasButtonComponent(
                        isTodaySelected: isTodaySelected,
                        onTapHoje: () {
                          setState(() {
                            isTodaySelected = true;
                          });
                        },
                        onTapSemana: () {
                          setState(() {
                            isTodaySelected = false;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      MovieListWidget(
                        moviesList: isTodaySelected
                            ? state.moviesTrendDay
                            : state.moviesTrendWeek,
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      MovieListWidget(
                        moviesList: state.moviesPop,
                        isMovie: true,
                      ),
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
