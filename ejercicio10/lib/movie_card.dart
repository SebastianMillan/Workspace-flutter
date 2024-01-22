import 'package:ejercicio10/models/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: const Color.fromARGB(255, 5, 5, 5),
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              width: 200,
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/' + movie.posterPath!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                movie.title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
                softWrap: true,
              ),
              Text(
                movie.releaseDate!,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    movie.voteAverage!.floor().toString(),
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
