import 'package:ejercicio6/card_car.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  final CardCar cardCar;
  const CarScreen({super.key, required this.cardCar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Image.network(cardCar.urlImagen),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cardCar.modeloCompleto + ' ',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  '€' + cardCar.precio.toString(),
                  style: const TextStyle(color: Colors.blue, fontSize: 25),
                )
              ],
            ),
          ),
          Text(
            cardCar.numPuertas + ' puertas - ' + cardCar.tipoCoche,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'VOLVER AL LISTADO',
                  style: TextStyle(color: Colors.blue),
                )),
          )
        ]),
      ),
    );
  }
}
