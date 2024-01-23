import 'dart:convert';
import 'package:ejercicio10/models/people_response/people.dart';
import 'package:ejercicio10/models/people_response/people_response.dart';
import 'package:ejercicio10/people_card.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PeopleWidget extends StatefulWidget {
  const PeopleWidget({super.key});

  @override
  State<PeopleWidget> createState() => _PeopleWidgetState();
}

class _PeopleWidgetState extends State<PeopleWidget> {
  late Future<List<People>> result;
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
              child: SizedBox(
                width: 400,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // number of items in each row
                      mainAxisSpacing: 8.0, // spacing between rows
                      crossAxisSpacing: 8.0, // spacing between columns
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: PeopleCard(people: snapshot.data![index]));
                    }),
              ),
            );
          } else {
            return Center(
                child: Text(
              snapshot.toString(),
              style: const TextStyle(color: Colors.white),
            ));
          }
        });
  }

  Future<List<People>> getData() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/person/popular?api_key=$tmdbApiKey'));

    if (response.statusCode == 200) {
      ActorListResponse actorResponse =
          ActorListResponse.fromJson(response.body);
      return actorResponse.results;
    }
    return result;
  }
}
