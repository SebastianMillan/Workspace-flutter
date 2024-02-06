import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pokemon_bloc_event.dart';
part 'pokemon_bloc_state.dart';

class PokemonBlocBloc extends Bloc<PokemonBlocEvent, PokemonBlocState> {
  PokemonBlocBloc() : super(PokemonBlocInitial()) {
    on<PokemonBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
