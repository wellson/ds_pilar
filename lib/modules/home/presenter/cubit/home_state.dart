part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSearch extends HomeState {
  final List<SearchEntity?> searchMulti;

  HomeSearch({required this.searchMulti});

}

final class HomeSuccess extends HomeState {
  final List<MovieEntity?> moviesTrendDay;
  final List<MovieEntity?> moviesTrendWeek;
  final List<MovieEntity?> moviesPop;
  final bool isToday;

  HomeSuccess(
      {required this.moviesTrendDay,
      required this.moviesTrendWeek,
      required this.moviesPop,
      required this.isToday});

}

final class HomeError extends HomeState {}
