import 'package:flutter/material.dart';

import 'Dash1.dart';

import 'profil.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      // case '/portofolio':
      //   return MaterialPageRoute(builder: (_) => Portofolio());
      case '/Dash1':
        return MaterialPageRoute(builder: (_) => Dash1());

      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
