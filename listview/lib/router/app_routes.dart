import 'package:flutter/material.dart';
import 'package:listview/models/model.dart';

import '../screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen',widget: HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'ListView Tipo 1',widget: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'ListView Tipo 2',widget: ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen',widget: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.warning_amber_rounded, name: 'Alert Screen',widget: AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final elemento in menuOptions) {
      appRoutes.addAll({elemento.route: (BuildContext context) => elemento.widget});
    }
    
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      : (BuildContext context) => HomeScreen(),
  //   'listview1' : (BuildContext context) => ListView1Screen(),
  //   'listview2' : (BuildContext context) => ListView2Screen(),
  //   'card'      : (BuildContext context) => CardScreen(),
  //   'alert'     : (BuildContext context) => AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}