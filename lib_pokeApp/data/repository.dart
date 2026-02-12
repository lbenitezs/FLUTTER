import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poke_app/data/model/pokemon.dart';

class PokemonRepository {
  final String _baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  Future<Pokemon> getPokemon(String name) async {
    final url = Uri.parse('$_baseUrl/${name.toLowerCase()}');
    final response = await http.get(url);

    if (response.statusCode == 200) { //código de respuesta exitoso
      final data = json.decode(response.body);
      return Pokemon.fromJson(data);
    } else {
      throw Exception('Pokémon no encontrado');
    }
  }
}
