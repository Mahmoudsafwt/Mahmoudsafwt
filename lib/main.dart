
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_detailes.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_screen.dart';
import 'package:islami_app/ui/home/Quran/quran_screen.dart';
import 'package:islami_app/ui/home/Settings/language_bottom_sheet.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:islami_app/ui/home/splash_screen/splash_screen.dart';
import 'package:islami_app/ui/sura_detailes/sura_detailes.dart';
import 'package:islami_app/ui/themes/applcation_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main()=>runApp(ChangeNotifierProvider(create:(context) => SettingProvider(), child: QuranApplication()));

class QuranApplication extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return MaterialApp(
      locale: Locale(settingProvider.currentlocale),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        QuranScreen.routeName:(context)=>QuranScreen(),
        SuraDetilesScreen.routeName:(context)=>SuraDetilesScreen(),
        HadethScreen.routName:(context)=>HadethScreen(),
        HadethDetalies.routeName:(context)=>HadethDetalies()
      },
      home:SplashScreen() ,
      theme: IslamiAppLightTheme.lightTheme,
      darkTheme:IslamiAppLightTheme.darkTheme ,
      themeMode: settingProvider.currentMode,



    );


  }

}
