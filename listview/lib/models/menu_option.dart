import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget widget;

  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.widget}
  );
  
}