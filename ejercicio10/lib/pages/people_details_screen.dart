import 'package:ejercicio10/known_for_card.dart';
import 'package:ejercicio10/models/people_response/people.dart';
import 'package:flutter/material.dart';

class PeopleDetail extends StatelessWidget {
  final People people;
  const PeopleDetail({super.key, required this.people});

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
          child: ListView(
            children: [
              Center(
                  child: SizedBox(
                      width: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500/' +
                              people.profilePath!,
                          fit: BoxFit.cover,
                        ),
                      ))),
              Text(
                people.name!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                softWrap: true,
              ),
              SizedBox(
                height: 400, // Ajusta la altura según tus necesidades
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.knownFor!.length,
                  itemBuilder: (context, index) {
                    return KnownForCard(knownFor: people.knownFor![index]);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
