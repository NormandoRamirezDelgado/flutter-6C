import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home'      : (BuildContext context) => HomeScreen(),
    'listview1' : (BuildContext context) => ListView1Screen(),
    'listview2' : (BuildContext context) => ListView2Screen(),
    'alert'     : (BuildContext context) => AlertScreen(),
    'card'      : (BuildContext context) => CardScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}