import 'package:flutter/material.dart';
import 'package:resto/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        DetailRestaurantPage.routeName: (context) => DetailRestaurantPage(
              restaurant: ModalRoute.of(context).settings.arguments,
            ),
        SearchPage.routeName: (context) => SearchPage(
              restaurantName: ModalRoute.of(context).settings.arguments,
            ),
        CartPage.routeName: (context) => CartPage(),
      },
    );
  }
}
