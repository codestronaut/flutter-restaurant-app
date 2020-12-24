part of 'pages.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context).loadString(restaurantData),
      builder: (context, snapshot) {
        final List<Restaurant> restaurant = parseRestaurant(snapshot.data);
        return ListView.builder(
          itemCount: restaurant.length,
          itemBuilder: (context, index) {
            return buildRestaurantItem(context, restaurant[index]);
          },
        );
      },
    );
  }
}
