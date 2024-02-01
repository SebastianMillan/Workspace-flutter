import 'dart:convert';

import 'result.dart';

class FontListResponse {
  int? totalCount;
  List<Result>? results;

  FontListResponse({this.totalCount, this.results});

  factory FontListResponse.fromMap(Map<String, dynamic> data) {
    return FontListResponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FontListResponse].
  factory FontListResponse.fromJson(String data) {
    return FontListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FontListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
