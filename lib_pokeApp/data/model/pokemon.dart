class Pokemon {
  final int id;
  final String name;
  final String image;
  final List<String> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.image,
    required this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      image: json['sprites']['other']['official-artwork']
          ['front_default'],
      types: (json['types'] as List)
          .map((t) => t['type']['name'] as String)
          .toList(),
    );
  }
}
