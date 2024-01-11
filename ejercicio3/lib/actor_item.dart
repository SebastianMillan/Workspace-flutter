import 'package:flutter/material.dart';

class ActorItem extends StatelessWidget {
  final String urlImagen, nombre, apellido;

  const ActorItem(
      {super.key,
      required this.urlImagen,
      required this.nombre,
      required this.apellido});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          fit: BoxFit.fill,
          urlImagen,
          width: 200,
          height: 400,
        ),
        Text(nombre),
        Text(apellido)
      ],
    );
  }
}
