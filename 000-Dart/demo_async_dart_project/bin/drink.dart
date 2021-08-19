class Drink {
  Drink({required this.id, required this.name, required this.thumbnail});

  factory Drink.fromJson(Map<String, Object?> json) {
    return Drink(
        id: json['idDrink'] as String,
        name: json['strDrink'] as String,
        thumbnail: json['strDrinkThumb'] as String);
  }

  final String name;
  final String thumbnail;
  final String id;

  @override
  String toString() {
    return 'Drink: (id: $id, name: $name), thumb: $thumbnail';
  }
}
