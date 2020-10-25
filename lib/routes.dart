import 'package:flutter/material.dart';
import 'package:innovative_farming/main.dart';
import 'package:innovative_farming/pages/HomePage.dart';
import 'package:innovative_farming/pages/login/LoginPage.dart';
import 'package:innovative_farming/pages/splashScreen/splashScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/home':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => HomePage());
        }

        return _errorRoute();

        default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
    return Scaffold(appBar: AppBar(
      title: Text('Error'),
    ),
    body: Center(
      child: Text('ERROR'),
    ),

 );

    }
    );
  }
}
