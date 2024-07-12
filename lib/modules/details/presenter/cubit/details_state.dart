part of 'details_cubit.dart';

@immutable
sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}

final class DetailsLoading extends DetailsState {}

final class DetailsSuccess extends DetailsState {
  final MovieDetailEntity movie;
  final List<CreditsDetailEntity?>?credits;

  DetailsSuccess({
    required this.movie,
    required this.credits,
  });

}

final class DetailsError extends DetailsState {}
