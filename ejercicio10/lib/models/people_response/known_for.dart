import 'dart:convert';

class KnownFor {
  final bool? adult;
  final String? backdropPath;
  final int? id;
  final String? name;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final String? posterPath;
  final String? mediaType;
  final List<dynamic>? genreIds;
  final double? popularity;
  final String? firstAirDate;
  final double? voteAverage;
  final int? voteCount;
  final List<dynamic>? originCountry;

  const KnownFor({
    this.adult,
    this.backdropPath,
    this.id,
    this.name,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.firstAirDate,
    this.voteAverage,
    this.voteCount,
    this.originCountry,
  });

  factory KnownFor.fromMap(data) => KnownFor(
        adult: data['adult'] as bool?,
        backdropPath: data['backdrop_path'] ?? "",
        id: data['id'] as int?,
        name: data['name'] as String?,
        originalLanguage: data['original_language'] as String?,
        originalName: data['original_name'] as String?,
        overview: data['overview'] as String?,
        posterPath: data['poster_path'] as String?,
        mediaType: data['media_type'] as String?,
        genreIds: (data['genre_ids'] as List<dynamic>?),
        popularity: (data['popularity'] as double?)?.toDouble(),
        firstAirDate: data['first_air_date'] as String?,
        voteAverage: data['vote_average'] as double?,
        voteCount: data['vote_count'] as int?,
        originCountry: data['origin_country'] as List<dynamic>?,
      );

  Future<Map<dynamic, dynamic>> toMap() async => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'id': id,
        'name': name,
        'original_language': originalLanguage,
        'original_name': originalName,
        'overview': overview,
        'poster_path': posterPath,
        'media_type': mediaType,
        'genre_ids': genreIds,
        'popularity': popularity,
        'first_air_date': firstAirDate,
        'vote_average': voteAverage,
        'vote_count': voteCount,
        'origin_country': originCountry,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [KnownFor].
  factory KnownFor.fromJson(String data) {
    return KnownFor.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [KnownFor] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      adult,
      backdropPath,
      id,
      name,
      originalLanguage,
      originalName,
      overview,
      posterPath,
      mediaType,
      genreIds,
      popularity,
      firstAirDate,
      voteAverage,
      voteCount,
      originCountry,
    ];
  }
}
