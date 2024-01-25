import 'dart:convert';

import 'movie_video.dart';

class MovieVideoResponse {
  int? id;
  List<MovieVideo>? results;

  MovieVideoResponse({this.id, this.results});

  factory MovieVideoResponse.fromMap(Map<String, dynamic> data) {
    return MovieVideoResponse(
      id: data['id'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => MovieVideo.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieVideoResponse].
  factory MovieVideoResponse.fromJson(String data) {
    return MovieVideoResponse.fromMap(json.decode(data));
  }

  /// `dart:convert`
  ///
  /// Converts [MovieVideoResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
