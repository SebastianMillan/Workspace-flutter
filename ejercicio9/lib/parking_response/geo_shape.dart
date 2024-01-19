import 'dart:convert';

import 'geometry.dart';
import 'properties.dart';

class GeoShape {
  String? type;
  Geometry? geometry;
  Properties? properties;

  GeoShape({this.type, this.geometry, this.properties});

  Map<String, dynamic> toMap() => {
        'type': type,
        'geometry': geometry?.toMap(),
        'properties': properties?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GeoShape].
  factory GeoShape.fromJson(String data) {
    return GeoShape.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GeoShape] to a JSON string.
  String toJson() => json.encode(toMap());
}
