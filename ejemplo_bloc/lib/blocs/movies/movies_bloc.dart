import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ejemplo_bloc/models/movie_list_response/movie_list_response.dart';
import 'package:ejemplo_bloc/repositories/movie_repository.dart';
import 'package:ejemplo_bloc/repositories/movie_repository_impl.dart';
import 'package:meta/meta.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieRepository _movieRepository;

  MoviesBloc(this._movieRepository) : super(PopularMoviesInitial()) {
    on<MovieFetchPopularEvent>(_onMovieFetchPopular);
  }

  void _onMovieFetchPopular(
      MovieFetchPopularEvent event, Emitter<MoviesState> emit) async {
    try {
      final movieList = await _movieRepository.fetchPopularMovies(event.type);
      emit(PopularMovieFetchSuccess(movieList));
    } catch (e) {
      emit(PopularMovieFetchError(e.toString()));
    }
  }
}
