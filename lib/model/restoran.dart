import 'dart:convert';

class Restoran {
  late String id;
  late String name;
  late String description;
  late String pictureId;
  late String city;
  late num rating;
  late List foods;
  late List drinks;

  Restoran({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    required this.foods,
    required this.drinks,
  });

  Restoran.fromJson(Map<String, dynamic> restoran) {
    id = restoran['id'];
    name = restoran['name'];
    description = restoran['description'];
    pictureId = restoran['pictureId'];
    city = restoran['city'];
    rating = restoran['rating'];
    foods = restoran['foods'];
    drinks = restoran['drinks'];
  }
}

List<Restoran> parseRestorant(json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((dynamic json) => Restoran.fromJson(json)).toList();
}
