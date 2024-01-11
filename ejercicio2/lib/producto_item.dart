import 'package:flutter/material.dart';

class ProductoItem extends StatelessWidget {
  final String urlImagen, nombre, direccion;
  final int valoracionMedia;
  final double precioMedio;

  const ProductoItem(
      {super.key,
      required this.urlImagen,
      required this.nombre,
      required this.direccion,
      required this.valoracionMedia,
      required this.precioMedio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 700,
        child: Card(
          color: const Color.fromARGB(255, 49, 79, 176),
          child: IntrinsicHeight(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              SizedBox(
                  width: 150,
                  child: Image.network(
                    urlImagen,
                    fit: BoxFit.cover,
                    width: 20,
                  )),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      nombre,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Dirección: ' + direccion,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text(
                          valoracionMedia.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          precioMedio.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        const Icon(
                          Icons.euro,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
