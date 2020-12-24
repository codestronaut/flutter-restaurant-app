part of 'pages.dart';

class CartPage extends StatelessWidget {
  static const routeName = '/cart_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: shadowColor,
        elevation: 0.5,
        title: Text('Keranjang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/not_found.png',
              width: 250.0,
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 250.0,
              child: Text(
                'Yahh, Fitur ini belum tersedia untuk saat ini',
                style: mediumTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
