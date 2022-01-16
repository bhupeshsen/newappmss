import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: Colors.black,
    primaryColor: Colors.black,
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.black),
      headline6: TextStyle(fontSize: 14.0,color: Colors.black54),

    ),

  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonColor: Colors.white,
    primaryColor: Colors.white,
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.white),
      headline6: TextStyle(fontSize: 14.0, color: Colors.white54),

    ),
  );
}