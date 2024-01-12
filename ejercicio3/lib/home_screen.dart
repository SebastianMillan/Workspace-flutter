import 'package:ejercicio3/actor_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text('Best Iranian Actors and Actresses',
              style: GoogleFonts.cinzel(
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Text('March 2020',
              style: GoogleFonts.cinzel(
                textStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              ActorItem(
                  urlImagen:
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ngoitknM6hw8fffLywyvjzy6Iti.jpg',
                  nombre: 'Barry',
                  apellido: 'Keoghan'),
              ActorItem(
                  urlImagen:
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pqdR8zqAWF87chGYlbdYr0YfC7g.jpg',
                  nombre: 'Jeremy',
                  apellido: 'Piven'),
              ActorItem(
                  urlImagen:
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrPmsC9YATcnyAxvXEdGshccbqU.jpg',
                  nombre: 'Sydney',
                  apellido: 'Sweeney'),
              ActorItem(
                  urlImagen:
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg',
                  nombre: 'Morgan',
                  apellido: 'Freeman')
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Icon(Icons.home),
                  Text(
                    'Home',
                    style: GoogleFonts.aDLaMDisplay(),
                  )
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.camera),
                  Text(
                    'Booking',
                    style: GoogleFonts.aDLaMDisplay(),
                  )
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.save),
                  Text(
                    'List',
                    style: GoogleFonts.aDLaMDisplay(),
                  )
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.account_circle),
                  Text(
                    'Profile',
                    style: GoogleFonts.aDLaMDisplay(),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
