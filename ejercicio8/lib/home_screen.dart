import 'dart:convert';

import 'package:ejercicio8/card_pokemon.dart';
import 'package:ejercicio8/pokemon_response/pokemon_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  Future<PokemonResponse> pokemonFuture = getPokemonList();

  static Future<PokemonResponse> getPokemonList() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=200');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  Widget buildPoke(PokemonResponse pokemons) {
    // ListView Builder to show data in a list
    return ListView.builder(
      itemBuilder: (context, index) {
        final pokemon = pokemons.results![index];
        return CardPokemon(pokemon: pokemon);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // FutureBuilder
        child: FutureBuilder<PokemonResponse>(
          future: getPokemonList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // until data is fetched, show loader
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              // once data is fetched, display it on screen (call buildPosts())
              final poke = snapshot.data!;
              return buildPoke(poke);
            } else {
              // if no data, show simple Text
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }
}
