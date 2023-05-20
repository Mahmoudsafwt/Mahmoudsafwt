import 'package:flutter/material.dart';

class IslamiAppLightTheme {
  static const Color lightPrimaryColor = Color(0xffb7935f);
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color accentColorInDarkMode = Color(0xffFACC1D);

  static final ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(size: 30, color: Colors.black),
    accentColor: lightPrimaryColor,
    cardTheme: CardTheme(color: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 32),
        selectedLabelStyle: TextStyle(
          fontSize: 18,
        ),
        backgroundColor: lightPrimaryColor),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        color: Colors.transparent,
        elevation: 0),
    textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 30, color: Colors.black),
        headlineMedium: TextStyle(fontSize: 24, color: Colors.black),
        headlineSmall: TextStyle(color: Colors.black, fontSize: 22)),
  );

  static final ThemeData darkTheme = ThemeData(
      iconTheme: IconThemeData(size: 30, color: accentColorInDarkMode,),
      textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 30, color: Colors.white),
          headlineMedium: TextStyle(fontSize: 24, color: Colors.white),
          headlineSmall: TextStyle(color: accentColorInDarkMode, fontSize: 22),
          ),
      accentColor: accentColorInDarkMode,
      cardTheme: CardTheme(color: darkPrimaryColor),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkPrimaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: accentColorInDarkMode,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32),
          selectedLabelStyle: TextStyle(
            fontSize: 18,
          ),
          backgroundColor: darkPrimaryColor),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          color: Colors.transparent,
          elevation: 0));
}
