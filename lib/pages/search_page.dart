part of 'pages.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search_page';
  final String restaurantName;
  const SearchPage({this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: shadowColor,
        elevation: 0.5,
        title: Text('Hasil untuk "$restaurantName"'),
      ),
      body: ResultList(
        restaurantName: restaurantName,
      ),
    );
  }
}

class ResultList extends StatelessWidget {
  final String restaurantName;
  const ResultList({this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context).loadString(restaurantData),
      builder: (context, snapshot) {
        final List<Restaurant> restaurant = parseRestaurant(snapshot.data);
        return ListView.builder(
          itemCount: restaurant.length,
          itemBuilder: (context, index) {
            if (restaurant[index].name.toLowerCase() == restaurantName) {
              return buildRestaurantItem(context, restaurant[index]);
            } else {
              return Container();
            }
          },
        );
      },
    );
  }
}
