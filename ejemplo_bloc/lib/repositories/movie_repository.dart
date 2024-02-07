import 'package:ejemplo_bloc/models/movie_list_response/movie_list_response.dart';

abstract class MovieRepository {
  //Future<List<Movie>> fetchMovies(String type);
  Future<List<Movie>> fetchPopularMovies(String type);
  Future<Movie> fetchMovieDetail(int movieId);
}
