import 'package:ejercicio7/pokemon/pokemon.dart';
import 'package:flutter/material.dart';

class CardPokemon extends StatelessWidget {
  final Pokemon pokemon;
  const CardPokemon({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Card(
      shadowColor: Colors.green,
      color: const Color.fromRGBO(159, 212, 161, 1),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.network(
          'https://img.pokemondb.net/sprites/home/normal/' +
              pokemon.name! +
              '.png',
          width: 200,
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            pokemon.name!.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        )
      ]),
    ));
  }
}
