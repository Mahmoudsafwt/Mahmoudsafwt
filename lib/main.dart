

import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Quran/quran_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/splash_screen/splash_screen.dart';
import 'package:islami_app/ui/sura_detailes/sura_detailes.dart';

void main()=>runApp(QuranApplication());

class QuranApplication extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        QuranScreen.routeName:(context)=>QuranScreen(),
        SuraDetilesScreen.routeName:(context)=>SuraDetilesScreen()
      },
      home:SplashScreen() ,
      theme:ThemeData(
        cardTheme:CardTheme(
          color: Colors.white
        ) ,
          scaffoldBackgroundColor: Colors.transparent,
          primaryColor: Color(0xffb7935f),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme:IconThemeData(size: 32) ,


          backgroundColor: Color(0xffb7935f)
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),

          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
          color: Colors.black),
          color: Colors.transparent,
            elevation: 0

        )

      ),
    );


  }
}
