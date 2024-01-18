import 'dart:convert';

import 'package:ejercicio8/pokemon/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Pokemon>> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=200'));

  if (response.statusCode == 200) {
    return (json.decode(response.body) as List)
        .map((e) => Pokemon.fromJson(e))
        .toList();
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
  Future<List<Pokemon>> listaPokemon = fetchPokemon();

  @override
  void initState() {
    super.initState();
    listaPokemon = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<List<Pokemon>>(
        future: listaPokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PokemonWidget()
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
