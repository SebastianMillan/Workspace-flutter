import 'dart:convert';

import 'result.dart';

class ParkingResponse {
  int? totalCount;
  List<Result>? results;

  ParkingResponse({this.totalCount, this.results});

  factory ParkingResponse.fromMap(Map<String, dynamic> data) {
    return ParkingResponse(
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
  /// Parses the string and returns the resulting Json object as [ParkingResponse].
  factory ParkingResponse.fromJson(String data) {
    return ParkingResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ParkingResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
