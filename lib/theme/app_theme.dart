import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary =  Color(0xFF57C2FE);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF57C2FE),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF57C2FE),
      elevation: 0
    ),
    inputDecorationTheme: const InputDecorationTheme(
      
      floatingLabelStyle: TextStyle(
        color: Colors.black
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1,color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1,color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      border: InputBorder.none,

    )
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: Colors.indigo,
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.black
  );
}