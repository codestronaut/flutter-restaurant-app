part of 'pages.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                elevation: 1.0,
                pinned: true,
                expandedHeight: 280,
                backgroundColor: Colors.white,
                title: Text(
                  appName.toUpperCase(),
                  style: largeTextStyle,
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.local_grocery_store),
                    onPressed: () {
                      Navigator.pushNamed(context, CartPage.routeName);
                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 80.0),
                        Text(
                          captionSection1,
                          style: mediumTextStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              captionSection2,
                              style: mediumTextStyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              highlightCaptionSection,
                              style: mediumBoldTextStyle.copyWith(
                                color: accentColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 42.0,
                        ),
                        Container(
                          height: 45.0,
                          child: TextField(
                            controller: textController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                              ),
                              hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300),
                              hintText: searchHint,
                              hintMaxLines: 1,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            onSubmitted: (text) {
                              Navigator.pushNamed(
                                context,
                                SearchPage.routeName,
                                arguments: text.toLowerCase(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: RestaurantList(),
        ),
      ),
    );
  }
}
