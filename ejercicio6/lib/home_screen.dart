import 'package:ejercicio6/card_car.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CardCar(
                urlImagen:
                    'https://www.autopista.es/uploads/s1/12/47/59/03/analizamos-el-coche-que-abandera-la-transformacion-de-las-marcas-suv-familiar-coupe-hibrido.jpeg',
                numPuertas: '4',
                tipoCoche: 'SUV',
                modeloCompleto: 'Renault Rafale',
                precio: 34540.0,
                numOfertas: 49,
                tag: 'Mejor precio'),
            CardCar(
                urlImagen:
                    'https://d1eip2zddc2vdv.cloudfront.net/dphotos/750x400/31564277-1659957162.jpg',
                numPuertas: '4',
                tipoCoche: 'Deportivo',
                modeloCompleto: 'MG 4',
                precio: 54233.3,
                numOfertas: 12,
                tag: 'Eficiente'),
          ],
        ),
      ),
    );
  }
}
