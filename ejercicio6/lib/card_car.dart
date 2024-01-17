import 'package:ejercicio6/car_screen.dart';
import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  final String urlImagen, numPuertas, tipoCoche, modeloCompleto, tag;
  final int numOfertas;
  final double precio;

  const CardCar(
      {super.key,
      required this.urlImagen,
      required this.numPuertas,
      required this.tipoCoche,
      required this.modeloCompleto,
      required this.precio,
      required this.numOfertas,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tag,
                  style: const TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 93, 205, 97)),
                ),
                Text(
                  numOfertas.toString() + ' ofertas',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 110, 110, 110)),
                )
              ],
            ),
            Center(
                child: Image.network(
              urlImagen,
              width: 250,
            )),
            Text(
              tipoCoche,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(numPuertas + ' puertas - ' + modeloCompleto,
                style: const TextStyle(color: Colors.grey, fontSize: 12)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                '€' + precio.toString(),
                style: const TextStyle(fontSize: 24, color: Colors.blue),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarScreen(
                                  cardCar: CardCar(
                                      modeloCompleto: modeloCompleto,
                                      numOfertas: numOfertas,
                                      numPuertas: numPuertas,
                                      precio: precio,
                                      tag: tag,
                                      tipoCoche: tipoCoche,
                                      urlImagen: urlImagen),
                                )));
                  },
                  child: const Text(
                    'SELECCIONAR',
                    style: TextStyle(color: Colors.blue),
                  ))
            ]),
          ])),
    );
  }
}
