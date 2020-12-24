part of 'widgets.dart';

Widget buildRestaurantItem(BuildContext context, Restaurant restaurant) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailRestaurantPage.routeName,
            arguments: restaurant);
      },
      child: Card(
        shadowColor: shadowColor,
        elevation: 0.5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Hero(
              tag: restaurant.pictureId,
              child: Container(
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(restaurant.pictureId),
                  ),
                ),
              ),
            ),
            Hero(
              tag: restaurant.id,
              child: MinimumRestaurantInfo(
                restaurant: restaurant,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
