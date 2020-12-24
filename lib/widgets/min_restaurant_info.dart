part of 'widgets.dart';

class MinimumRestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;
  const MinimumRestaurantInfo({@required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: semiMediumTextStyle.copyWith(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                restaurant.city,
                style: lightNormalTextStyle.copyWith(
                  color: greyColor,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                restaurant.rating.toString(),
                style: lightNormalTextStyle.copyWith(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              RatingBar.builder(
                itemCount: 5,
                itemSize: 18.0,
                itemPadding: const EdgeInsets.symmetric(vertical: 4.0),
                allowHalfRating: true,
                initialRating: restaurant.rating.toDouble(),
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: accentColor,
                  );
                },
                onRatingUpdate: null,
              ),
            ],
          )
        ],
      ),
    );
  }
}
