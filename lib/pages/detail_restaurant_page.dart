part of 'pages.dart';

class DetailRestaurantPage extends StatelessWidget {
  static const routeName = '/detail_restaurant';
  final Restaurant restaurant;
  const DetailRestaurantPage({@required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              expandedHeight: 250.0,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: restaurant.pictureId,
                  child: Image.network(
                    restaurant.pictureId,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: DetailRestaurant(
            restaurant: restaurant,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CartPage.routeName);
        },
        backgroundColor: accentColor,
        child: Icon(Icons.local_grocery_store),
      ),
    );
  }
}

class DetailRestaurant extends StatelessWidget {
  final Restaurant restaurant;
  const DetailRestaurant({this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: restaurant.id,
          child: MinimumRestaurantInfo(
            restaurant: restaurant,
          ),
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: semiMediumTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                restaurant.description,
                style: normalTextStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                food,
                style: semiMediumTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ListFoods(
              foods: restaurant.menus.foods,
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                drink,
                style: semiMediumTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ListDrinks(
              drinks: restaurant.menus.drinks,
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
