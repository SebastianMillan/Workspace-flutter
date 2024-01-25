import 'package:ejercicio10/models/people_response/known_for.dart';
import 'package:flutter/material.dart';

class KnownForCard extends StatelessWidget {
  final KnownFor knownFor;
  const KnownForCard({super.key, required this.knownFor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            width: 200,
            'https://image.tmdb.org/t/p/w500/' + knownFor.posterPath!,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
