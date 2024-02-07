import 'dart:convert';

import 'package:ejemplo_bloc/models/movie_list_response/movie_list_response.dart';
import 'package:ejemplo_bloc/repositories/movie_repository.dart';
import 'package:http/http.dart';

class MovieRepositoryImpl extends MovieRepository {
  Client _httpClient = Client();

  @override
  Future<Movie> fetchMovieDetail(int movieId) {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> fetchPopularMovies(String type) async {
    final response = await _httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/person/$type?api_key=c69873949130194e8bc389f3e0cf7420'));
    if (response.statusCode == 200) {
      return MovieListResponse.fromJson(json.decode(response.body)).results!;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
