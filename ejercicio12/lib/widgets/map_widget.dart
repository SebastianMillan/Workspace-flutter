import 'dart:async';

import 'package:ejercicio12/models/font_list_response/result.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  final List<Result> listFonts;
  const MapWidget({super.key, required this.listFonts});

  @override
  State<MapWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MapWidget> {
  late Set<Marker> listMarker;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
  }

  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(39.48401080, -0.37739),
    zoom: 11.9746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: cameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: widget.listFonts
            .map((e) => Marker(
                markerId: MarkerId(e.calle!),
                position: LatLng(e.geoPoint2d!.lat!, e.geoPoint2d!.lon!)))
            .toSet(),
      ),
    );
  }
}
