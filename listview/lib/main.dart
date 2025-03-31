import 'package:flutter/material.dart';
import 'package:listview/screens/listview2_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListView Tipo 1',
      home: ListView2Screen()
    );
  }
}
