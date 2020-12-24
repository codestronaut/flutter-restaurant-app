class Food {
  String name;

  Food({this.name});

  Food.fromJson(Map<String, dynamic> food) {
    name = food['name'];
  }
}
