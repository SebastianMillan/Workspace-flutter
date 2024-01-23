import 'dart:convert';
import 'package:ejercicio10/movie_card.dart';
import 'package:http/http.dart' as http;
import 'package:ejercicio10/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MovieWidget extends StatefulWidget {
  const MovieWidget({super.key});

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  late Future<List<Movie>> result;
  final tmdbApiKey = 'c69873949130194e8bc389f3e0cf7420';
  bool enabled = true;

  @override
  void initState() {
    super.initState();
    result = getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: result,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            enabled = false;
            return Skeletonizer(
                enabled: enabled,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of items in each row
                            mainAxisSpacing: 2.0, // spacing between rows
                            crossAxisSpacing: 2.0, // spacing between columns
                            mainAxisExtent: 400),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return MovieCard(movie: snapshot.data![index]);
                    }));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Future<List<Movie>> getData() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=$tmdbApiKey'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      List<dynamic> data = jsonData['results'];
      List<Movie> movieList = data.map((e) => Movie.fromJson(e)).toList();
      return movieList;
    }
    return result;
  }
}
