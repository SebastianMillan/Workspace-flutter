import 'dart:convert';
import 'package:ejercicio10/models/people_response/people.dart';

class ActorListResponse {
  final int? page;
  final List<People> results;
  final int? totalPages;
  final int? totalResults;

  const ActorListResponse({
    this.page,
    required this.results,
    this.totalPages,
    this.totalResults,
  });

  factory ActorListResponse.fromMap(data) {
    return ActorListResponse(
      page: data['page'] as int?,
      results: (data['results'] as List<dynamic>?)!
          .map((e) => People.fromMap(e))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalResults: data['total_results'] as int?,
    );
  }

  Future<Map<dynamic, dynamic>> toMap() async => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ActorListResponse].
  factory ActorListResponse.fromJson(String data) {
    return ActorListResponse.fromMap(json.decode(data));
  }

  /// `dart:convert`
  ///
  /// Converts [ActorListResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];
}
