import 'package:ejercicio10/models/people_response/people.dart';
import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  final People people;
  const PeopleCard({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                'https://image.tmdb.org/t/p/w500/' + people.profilePath!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                people.name!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
                softWrap: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    people.popularity!.floor().toString(),
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
