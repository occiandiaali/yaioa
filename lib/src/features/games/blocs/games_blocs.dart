import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/games_events.dart';
import '../blocs/games_states.dart';
import '../data/repositories.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  final GamesRepository _gamesRepository;

  GamesBloc(this._gamesRepository) : super(GamesLoadingState()) {
    on<LoadGamesEvent>((event, emit) async {
      emit(GamesLoadingState());
      try {
        final games = await _gamesRepository.getGames();
        emit(GamesLoadedState(games));
      } catch(e) {
        emit(GamesErrorState(e.toString()));
      }
    });
  }
}


