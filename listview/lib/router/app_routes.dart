import 'package:flutter/material.dart';
import 'package:listview/models/model.dart';

import '../screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'ListView Tipo 1',widget: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'ListView Tipo 2',widget: ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card Screen',widget: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.warning_amber_rounded, name: 'Alert Screen',widget: AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Avatar Screen',widget: AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline, name: 'Animated Screen',widget: AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'TextInputs',widget: InputsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final elemento in menuOptions) {
      appRoutes.addAll({elemento.route: (BuildContext context) => elemento.widget});
    }
    
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}