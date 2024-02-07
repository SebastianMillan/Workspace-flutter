part of 'movies_bloc.dart';

@immutable
sealed class MoviesState {}

final class PopularMoviesInitial extends MoviesState {}

final class PopularMovieFetchSuccess extends MoviesState {
  final List<Movie> popularMovieList;
  PopularMovieFetchSuccess(this.popularMovieList);
}

final class PopularMovieFetchError extends MoviesState {
  final String errorMessage;
  PopularMovieFetchError(this.errorMessage);
}

final class LatestMoviesInitial extends MoviesState {}

final class LatestMovieFetchSuccess extends MoviesState {
  final List<Movie> latestMovieList;
  LatestMovieFetchSuccess(this.latestMovieList);
}

final class LatestMovieFetchError extends MoviesState {
  final String errorMessage;
  LatestMovieFetchError(this.errorMessage);
}
