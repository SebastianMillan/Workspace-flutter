import 'dart:convert';

import 'geo_point2d.dart';

class Parking {
  String? nombre;
  String? direccion;
  int? idAparcamiento;
  String? numeropol;
  int? tipo;
  int? plazastota;
  int? plazaslibr;
  dynamic ultimaMod;
  int? objectid;
  double? ocupacion;
  GeoPoint2d? geoPoint2d;

  Parking({
    this.nombre,
    this.direccion,
    this.idAparcamiento,
    this.numeropol,
    this.tipo,
    this.plazastota,
    this.plazaslibr,
    this.ultimaMod,
    this.objectid,
    this.ocupacion,
    this.geoPoint2d,
  });

  factory Parking.fromMap(Map<String, dynamic> data) => Parking(
        nombre: data['nombre'] as String?,
        direccion: data['direccion'] as String?,
        idAparcamiento: data['id_aparcamiento'] as int?,
        numeropol: data['numeropol'] as String?,
        tipo: data['tipo'] as int?,
        plazastota: data['plazastota'] as int?,
        plazaslibr: data['plazaslibr'] as int?,
        ultimaMod: data['ultima_mod'] as dynamic,
        objectid: data['objectid'] as int?,
        ocupacion: (data['ocupacion'] as num?)?.toDouble(),
        geoPoint2d: data['geo_point_2d'] == null
            ? null
            : GeoPoint2d.fromMap(data['geo_point_2d'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'nombre': nombre,
        'direccion': direccion,
        'id_aparcamiento': idAparcamiento,
        'numeropol': numeropol,
        'tipo': tipo,
        'plazastota': plazastota,
        'plazaslibr': plazaslibr,
        'ultima_mod': ultimaMod,
        'objectid': objectid,
        'ocupacion': ocupacion,
        'geo_point_2d': geoPoint2d?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Parking.fromJson(Map<String, dynamic> json) {
    return Parking(
        nombre: json['nombre'],
        direccion: json['direccion'],
        plazastota: json['plazastota']);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toMap());
}
