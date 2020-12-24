import 'package:resto/models/drink.dart';
import 'package:resto/models/food.dart';

class Menu {
  List<Food> foods;
  List<Drink> drinks;

  Menu({
    this.foods,
    this.drinks,
  });

  Menu.fromJson(Map<String, dynamic> menu) {
    if (menu['foods'] != null) {
      foods = List<Food>();
      menu['foods'].forEach((food) {
        foods.add(Food.fromJson(food));
      });
    }

    if (menu['drinks'] != null) {
      drinks = List<Drink>();
      menu['drinks'].forEach((drink) {
        drinks.add(Drink.fromJson(drink));
      });
    }
  }
}
