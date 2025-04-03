import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';
import 'package:listview/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Tipo 1',
      // home: AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,

      theme: AppTheme.lightTheme,
    );
  }
}
