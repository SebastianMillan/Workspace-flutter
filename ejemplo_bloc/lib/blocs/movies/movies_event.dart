part of 'movies_bloc.dart';

@immutable
sealed class MoviesEvent {}

class MovieFetchPopularEvent extends MoviesEvent {
  //Solo cuando le pasamos por parámetro algo a la peticion
  final String type;
  MovieFetchPopularEvent(this.type);

  //Para sacar el idMovie se hace en un bloc de MovieDetail diferente a este
}
