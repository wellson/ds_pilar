import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/movie_entity.dart';
import 'package:tmdb_app/modules/home/domain/entities/movies/search_entity.dart';
import 'package:tmdb_app/modules/home/domain/usecase/get_movies_usecase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final IGetMoviesUsecase _getMoviesUsecase;
  HomeCubit({required IGetMoviesUsecase getMoviesUsecase})
      : _getMoviesUsecase = getMoviesUsecase,
        super(HomeInitial());

  init() async {
    emit(HomeLoading());
    final moviesTrendDay = await getMoviesTrendingDay();
    final moviesTrendWeek = await getMoviesTrendingWeek();
    final moviesPop = await getMoviesPopular();
    if (moviesTrendDay!.isNotEmpty &&
        moviesTrendWeek!.isNotEmpty &&
        moviesPop!.isNotEmpty) {
      emit(HomeSuccess(
        moviesTrendDay: moviesTrendDay,
        moviesTrendWeek: moviesTrendWeek,
        moviesPop: moviesPop,
        isToday: true,
      ));
    }
  }

  getMoviesTrendingDay() async {
    final movies = await _getMoviesUsecase.getMoviesTrendingDay();
    return movies;
  }

  getMoviesTrendingWeek() async {
    final movies = await _getMoviesUsecase.getMoviesTrendingWeek();
    return movies;
  }

  getMoviesPopular() async {
    final movies = await _getMoviesUsecase.getMoviesPopular();
    return movies;
  }

  search(String value) async {
    final search = await _getMoviesUsecase.searchMulti(value);
    if (search!.isNotEmpty) {
      emit(HomeSearch(searchMulti: search));
    } else {
      init();
    }
  }
}
