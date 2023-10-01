import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.blue;

  static final ThemeData principalTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
      toolbarHeight: 80
    )
  );
}
