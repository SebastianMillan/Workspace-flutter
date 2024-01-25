import 'package:ejercicio10/models/movie_video_response/movie_video.dart';
import 'package:ejercicio10/models/movie_video_response/movie_video_response.dart';
import 'package:ejercicio10/pages/video_player_screen.dart';
import 'package:ejercicio10/video_player_card.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MovieVideosWidget extends StatefulWidget {
  final String idMovie;
  const MovieVideosWidget({super.key, required this.idMovie});

  @override
  State<MovieVideosWidget> createState() => _MovieVideosWidgetState();
}

class _MovieVideosWidgetState extends State<MovieVideosWidget> {
  late Future<List<MovieVideo>> result;
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
          enabled = false; // Consider using setState to update the state
          return Skeletonizer(
            enabled: enabled,
            child: SizedBox(
              width: 500,
              height: 240,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                  mainAxisExtent: 400,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(
                              keyVideo: snapshot.data![index].key!,
                            ),
                          ),
                        );
                      },
                      child: VideoPlayerCard(
                        keyVideo: snapshot.data![index].key!,
                      ));
                },
              ),
            ),
          );
        } else {
          return const Text(
            "No tiene videos",
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }

  Future<List<MovieVideo>> getData() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/' +
            widget.idMovie +
            '/videos?api_key=$tmdbApiKey'));

    if (response.statusCode == 200) {
      MovieVideoResponse movieVideoResponse =
          MovieVideoResponse.fromJson(response.body);
      return movieVideoResponse.results!;
    }
    return result;
  }
}
