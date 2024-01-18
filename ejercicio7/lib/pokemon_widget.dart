import 'package:ejercicio7/card_pokemon.dart';
import 'package:ejercicio7/pokemon/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Pokemon> fetchCharacter() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/1'));

  if (response.statusCode == 200) {
    return Pokemon.fromJson(response.body);
  } else {
    throw Exception('Failed to load pokemon');
  }
}

class PokemonWidget extends StatefulWidget {
  const PokemonWidget({super.key});

  @override
  State<PokemonWidget> createState() => _PokemonWidgetState();
}

class _PokemonWidgetState extends State<PokemonWidget> {
  late Future<Pokemon> character;

  @override
  void initState() {
    super.initState();
    character = fetchCharacter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<Pokemon>(
        future: character,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CardPokemon(pokemon: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
