
import 'package:flutter/material.dart';
import 'package:poke_app/data/model/pokemon.dart';


class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailPage({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name.toUpperCase()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              pokemon.image,
              height: 220,
            ),
            const SizedBox(height: 20),
            Text(
              pokemon.name.toUpperCase(),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tipos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: pokemon.types.map((type) {
                return Chip(
                  label: Text(type),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
