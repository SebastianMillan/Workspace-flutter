import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorItem extends StatelessWidget {
  final String urlImagen, nombre, apellido;

  const ActorItem(
      {super.key,
      required this.urlImagen,
      required this.nombre,
      required this.apellido});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(160),
            child: Image.network(
              fit: BoxFit.cover,
              urlImagen,
              width: 200,
              height: 400,
            ),
          ),
          Text(
            nombre,
            style: GoogleFonts.cinzel(
                textStyle:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          Text(apellido,
              style:
                  GoogleFonts.cinzel(textStyle: const TextStyle(fontSize: 14)))
        ],
      ),
    );
  }
}
