import 'package:ejercicio10/models/movie.dart';
import 'package:ejercicio10/pages/movie_details_screen.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieDetail(
                      movie: movie,
                    )));
      },
      child: Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              width: 200,
              'https://image.tmdb.org/t/p/w500/' + movie.posterPath!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
