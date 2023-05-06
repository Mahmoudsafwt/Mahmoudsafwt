import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName='splash-screen';

  @override
  Widget build(BuildContext context) {

    Future.delayed( const Duration(seconds: 2),() {

      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },);
    return Scaffold(
      body: SizedBox(

          width: double.infinity,
          height: double.infinity,
          child: Image.asset('assets/images/splash.png',fit: BoxFit.fill,)),
    );
  }
}
