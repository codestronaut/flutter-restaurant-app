import 'dart:convert';
import 'menu.dart';

class Restaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  num rating;
  Menu menus;

  Restaurant({
    this.id,
    this.name,
    this.description,
    this.pictureId,
    this.city,
    this.rating,
    this.menus,
  });

  Restaurant.fromJson(Map<String, dynamic> restaurant) {
    id = restaurant['id'];
    name = restaurant['name'];
    description = restaurant['description'];
    pictureId = restaurant['pictureId'];
    city = restaurant['city'];
    rating = restaurant['rating'];
    menus =
        restaurant['menus'] != null ? Menu.fromJson(restaurant['menus']) : null;
  }
}

List<Restaurant> parseRestaurant(String json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['restaurants'];
  return parsed.map((json) => Restaurant.fromJson(json)).toList();
}
