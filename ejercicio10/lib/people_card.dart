import 'package:ejercicio10/models/people_response/people.dart';
import 'package:ejercicio10/pages/people_details_screen.dart';
import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  final People people;
  const PeopleCard({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PeopleDetail(
                      people: people,
                    )));
      },
      child: Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              width: 200,
              'https://image.tmdb.org/t/p/w500/' + people.profilePath!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
