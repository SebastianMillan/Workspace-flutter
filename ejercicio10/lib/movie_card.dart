import 'package:ejercicio10/models/movie.dart';
import 'package:ejercicio10/pages/movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/' + movie.posterPath!,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(49, 0, 0, 0),
                  Color.fromARGB(209, 0, 0, 0),
                ],
              ))),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topRight,
                child: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 7.0,
                  percent: movie.voteAverage! / 10,
                  center: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        movie.voteAverage!.toStringAsFixed(1),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                  backgroundColor: const Color.fromARGB(90, 197, 197, 197),
                  progressColor: Colors.yellow,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
