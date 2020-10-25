import 'package:flutter/material.dart';
import 'package:innovative_farming/pages/HomePage.dart';
import 'package:innovative_farming/pages/login/LoginPage.dart';
import 'package:innovative_farming/pages/message/message.dart';
import 'package:innovative_farming/pages/product/addToCard.dart';
import 'package:innovative_farming/pages/registration/registration.dart';
import 'package:innovative_farming/pages/search/search.dart';
import 'package:innovative_farming/pages/splashScreen/splashScreen.dart';
import 'package:innovative_farming/routes.dart';


/*
ifnal FirebaseApp app = FirebaseApp(
option:FirebaseOption(
googleAppID:'',
apiKey:'',
databaseURL:'',
));
 */

void main() {
  runApp(MyApp());
}
final routes = {

  '/home': (BuildContext context) => new HomePage(),
  '/login': (BuildContext context) => new LoginPage(),
  '/addtocard': (BuildContext context) => new AddToCard(),
  '/registration': (BuildContext context) => new registrationView(),
  '/search': (BuildContext context) => new search(),
  '/message': (BuildContext context) => new MessageView(),
 // '/splashScreen': (BuildContext context) => new SplashScreen(),
  '/': (BuildContext context) => new SplashScreen(),
};

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: new ThemeData(
        primarySwatch: Colors.grey,

      ),
      initialRoute: '/',
  //    routes: routes,
      onGenerateRoute: RouteGenerator.generateRoute,
      //drawer: Drawer(),
    );
  }
}
