part of 'widgets.dart';

class ListFoods extends StatelessWidget {
  final List<Food> foods;
  const ListFoods({this.foods});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(context, foods[index].name);
        },
      ),
    );
  }
}

class ListDrinks extends StatelessWidget {
  final List<Drink> drinks;
  const ListDrinks({this.drinks});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(context, drinks[index].name);
        },
      ),
    );
  }
}

Widget _buildMenuItem(BuildContext context, String menuName) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Card(
      shadowColor: shadowColor,
      elevation: 0.5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Container(
            width: 64.0,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: lightGreyColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/food.png'),
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 100.0,
            child: Text(
              menuName,
              style: normalTextStyle,
              maxLines: 2,
            ),
          ),
        ],
      ),
    ),
  );
}
