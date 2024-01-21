import 'package:ejercicio9/parking_response/result.dart';
import 'package:flutter/material.dart';

class ParkingCard extends StatelessWidget {
  final Parking parking;
  const ParkingCard({super.key, required this.parking});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shadowColor: Colors.grey,
        color: const Color.fromARGB(255, 244, 244, 244),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (parking.plazaslibr! > 0)
                const Icon(
                  Icons.done,
                  size: 40,
                  color: Colors.green,
                )
              else
                const Icon(
                  Icons.not_interested_outlined,
                  size: 40,
                  color: Colors.red,
                ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      parking.nombre!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      parking.direccion!,
                      style: const TextStyle(
                          fontSize: 11, fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Plazas Libres: " + parking.plazaslibr!.toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Plazas Totales: " + parking.plazastota!.toString(),
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
