import 'package:ejercicio4/vuelo_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          VueloItem(
              horaSalida: '20:55',
              horaLlegada: '22:05',
              duracion: '2h 10m',
              destino: 'Londres',
              origen: 'Madrid',
              codDestino: 'LHR',
              codOrigen: 'MAD',
              urlImgVuelo:
                  'https://logos-world.net/wp-content/uploads/2020/12/Iberia-Emblem.png',
              codVuelo: 'Iberia 7448'),
          VueloItem(
              horaSalida: '13:25',
              horaLlegada: '18:45',
              duracion: '3h 23m',
              destino: 'Dublin',
              origen: 'Sevilla',
              codDestino: 'DUB',
              codOrigen: 'SVQ',
              urlImgVuelo:
                  'https://logos-world.net/wp-content/uploads/2020/12/Iberia-Emblem.png',
              codVuelo: 'Iberia 7462')
        ]),
      ),
    );
  }
}
