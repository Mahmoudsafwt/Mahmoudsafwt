
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier
{
  ThemeMode currentMode=ThemeMode.dark;
  String currentlocale="en";

  void changeMode(ThemeMode newMode)
  {
    if(currentMode==newMode) return;
    currentMode=newMode;
    notifyListeners();
  }

  bool isDark(){
    return currentMode==ThemeMode.dark;
  }


  String mainBackGroundImage()
  {
    if(isDark()) return 'assets/images/dark_bg.png';
    else{
      return 'assets/images/default_bg.png';
    }
  }
  void changeLang(String newLanguageCode)

  {
    if(currentlocale==newLanguageCode) return;
    currentlocale=newLanguageCode;
    notifyListeners();

  }

 String bodyOfSebha(){

   if(isDark()) return 'assets/images/body_sebha_dark.png';
   else
     {
       return 'assets/images/body_sebha_logo.png';
     }
 }
  String logoOfSebha(){

    if(isDark()) return 'assets/images/head_sebha_dark.png';
    else
    {
      return 'assets/images/head_sebha_logo.png';
    }
  }
  String splashScreenImage()
  {
    if(isDark()) return 'assets/images/splash – 1.png';
        else
          {
            return 'assets/images/splash.png';
          }
  }

}