import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:innovative_farming/pages/message/message.dart';
import 'package:innovative_farming/pages/product/listProduct.dart';
import 'package:innovative_farming/pages/product/GridCard.dart';
class HomePage extends StatelessWidget {
  int _selectedIndex = 0;




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
          // automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                //method for new scene
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageView() ));
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  //method for new scene
                },
              ),
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'List', icon: Icon(Icons.favorite)),
              Tab(text: 'Card', icon: Icon(Icons.book)),
              Tab(text: 'Me', icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Center(
                  child: itemCard(
                    'assets/images/land.png',
                  ),
                ),
              ],
            ),
            Center(child: gridCard( )),
            Center(child: Text('BIRDS')),
          ],
        ),
        bottomNavigationBar: BottomBar,
      ),
    );
  }



  // Bottom Bar

  var BottomBar = BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.grey,
    selectedItemColor: Colors.pink,
    unselectedItemColor: Colors.white.withOpacity(.60),
    selectedFontSize: 14,
    unselectedFontSize: 14,
    onTap: (value) {
      // Respond to item press.
    },
    items: [
      BottomNavigationBarItem(
        title: Text('Favorites'),
        icon: Icon(Icons.favorite),
      ),
      BottomNavigationBarItem(
        title: Text('Places'),
        icon: Icon(Icons.location_on),
      ),
      BottomNavigationBarItem(
        title: Text('News'),
        icon: Icon(Icons.library_books),
      ),
      BottomNavigationBarItem(
        title: Text('Setting'),
        icon: Icon(Icons.wc),

      ),

    ],
  );
}

//Controller

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: shrinePink100,
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    indicatorColor: shrineBrown600,
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;

// https://stackoverflow.com/questions/49862572/multiple-widgets-used-the-same-globalkey

// https://material.io/develop/flutter/components/dialogs#
//https://material.io/develop/flutter/components/lists
//https://material.io/develop/flutter/components/cards
//https://material.io/develop/flutter/components/floating-action-buttons
