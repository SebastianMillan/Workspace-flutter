import 'package:flutter/material.dart';

class VueloItem extends StatelessWidget {
  final String horaSalida,
      horaLlegada,
      duracion,
      destino,
      origen,
      codDestino,
      codOrigen,
      urlImgVuelo,
      codVuelo;

  const VueloItem(
      {super.key,
      required this.horaSalida,
      required this.horaLlegada,
      required this.duracion,
      required this.destino,
      required this.origen,
      required this.codDestino,
      required this.codOrigen,
      required this.urlImgVuelo,
      required this.codVuelo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 158, 158, 158),
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //
        ],
        border: Border.all(
          width: 0.5,
          color: const Color.fromARGB(255, 155, 155, 155),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      horaSalida,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "SALIDA",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  width: 1.2,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  codOrigen,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        Text(origen, style: const TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(urlImgVuelo),
                          )),
                        ),
                        Text(
                          codVuelo,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Text(
                      'Duración: ' + duracion,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      horaLlegada,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "LLEGADA",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                            border: Border.all(
                              width: 1.2,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(codDestino,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          )),
                    ),
                    Text(destino, style: const TextStyle(fontSize: 18))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
