import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/credits_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/entities/details/movie_detail_entity.dart';
import 'package:tmdb_app/modules/details/domain/usecase/get_details_usecase.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final IGetDetailsUsecase _geDetailssUsecase;
  DetailsCubit({required IGetDetailsUsecase geDetailssUsecase})
      : _geDetailssUsecase = geDetailssUsecase,
        super(DetailsInitial());

  init(int id, bool isMovie) async {
    emit(DetailsLoading());
    if (isMovie) {
      final movie = await _geDetailssUsecase.getDetailsMovie(id);
      final movieCredits = await _geDetailssUsecase.getCreditsMovie(id);
      if (movie != null) {}
      emit(DetailsSuccess(movie: movie!, credits: movieCredits!));
    } else {
      final tv = await _geDetailssUsecase.getDetailsTv(id);
      final tvCredits = await _geDetailssUsecase.getCreditsTv(id);
      if (tv != null) {}
      emit(DetailsSuccess(movie: tv!, credits: tvCredits!));
    }
  }
}
