import 'package:ejercicio3/actor_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Best Iranian Actors and Actresses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'March 2020',
            style: TextStyle(fontSize: 20),
          ),
          ListView(
            shrinkWrap:,
            scrollDirection: Axis.horizontal, children: const [
            ActorItem(
                urlImagen:
                    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ngoitknM6hw8fffLywyvjzy6Iti.jpg',
                nombre: 'Barry',
                apellido: 'Keoghan'),
            ActorItem(
                urlImagen:
                    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ngoitknM6hw8fffLywyvjzy6Iti.jpg',
                nombre: 'Barry',
                apellido: 'Keoghan'),
            ActorItem(
                urlImagen:
                    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ngoitknM6hw8fffLywyvjzy6Iti.jpg',
                nombre: 'Barry',
                apellido: 'Keoghan'),
            ActorItem(
                urlImagen:
                    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ngoitknM6hw8fffLywyvjzy6Iti.jpg',
                nombre: 'Barry',
                apellido: 'Keoghan')
          ]),
          const Row(
            children: [
              Column(
                children: [Icon(Icons.home), Text('Home')],
              ),
              Column(
                children: [Icon(Icons.camera), Text('Home')],
              ),
              Column(
                children: [Icon(Icons.save), Text('Home')],
              ),
              Column(
                children: [Icon(Icons.save), Text('Home')],
              )
            ],
          )
        ],
      ),
    ));
  }
}
