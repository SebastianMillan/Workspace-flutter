import 'package:ejercicio10/models/movie.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  const MovieDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Center(
                  child: SizedBox(
                      width: 350,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500/' +
                              movie.posterPath!,
                          fit: BoxFit.cover,
                        ),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        movie.title!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(movie.voteAverage!.floor().toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))
                    ],
                  )
                ],
              ),
              Text(movie.releaseDate!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(movie.overview!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
              ),
            ],
          ),
        ));
  }
}
