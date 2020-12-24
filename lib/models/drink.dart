class Drink {
  String name;

  Drink({this.name});

  Drink.fromJson(Map<String, dynamic> drink) {
    name = drink['name'];
  }
}
