import 'package:flutter/material.dart';
import 'package:poke_app/data/model/pokemon.dart';
import '../data/repository.dart';
import 'pokemon_detail_page.dart';

class PokemonSearchPage extends StatefulWidget {
  const PokemonSearchPage({super.key});

  @override
  State<PokemonSearchPage> createState() => _PokemonSearchPageState();
}

class _PokemonSearchPageState extends State<PokemonSearchPage> {
  final PokemonRepository _repository = PokemonRepository();

  String _pokemonName = '';
  Future<Pokemon>? _pokemonFuture;

  void _searchPokemon() {
    if (_pokemonName.isEmpty) return;

    setState(() {
      _pokemonFuture = _repository.getPokemon(_pokemonName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscador Pokémon'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nombre del Pokémon',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                _pokemonName = value.trim();
              },
              onFieldSubmitted: (_) => _searchPokemon(),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _searchPokemon,
              child: const Text('Buscar'),
            ),
            const SizedBox(height: 20),

            if (_pokemonFuture != null)
              FutureBuilder<Pokemon>(
                future: _pokemonFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  if (snapshot.hasError) {
                    return Text(
                      snapshot.error.toString(),
                      style: const TextStyle(color: Colors.red),
                    );
                  }

                  if (snapshot.hasData) {
                    final pokemon = snapshot.data!;
                    return InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                PokemonDetailPage(pokemon: pokemon),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            pokemon.image,
                            height: 150,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            pokemon.name.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return const SizedBox();
                },
              ),
          ],
        ),
      ),
    );
  }
}
