import 'package:ejercicio9/parking_response/result.dart';
import 'package:flutter/material.dart';

class ParkingCard extends StatelessWidget {
  final Parking parking;
  const ParkingCard({super.key, required this.parking});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(parking.nombre!.toUpperCase()),
          Text(parking.direccion!),
          Text(parking.plazastota!.toString())
        ],
      ),
    );
  }
}
