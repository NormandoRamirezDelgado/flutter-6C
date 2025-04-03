

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: Colors.indigoAccent,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 146, 147, 224),
    ),
 
  );
  
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color Primario
    primaryColor: Colors.indigoAccent,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 244, 173, 200),
    ),

    iconTheme: IconThemeData(
      color: primary,
    )
  );
}