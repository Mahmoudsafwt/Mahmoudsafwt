import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_screen.dart';
import 'package:islami_app/ui/home/Quran/quran_screen.dart';
import 'package:islami_app/ui/home/Radio/radio_screen.dart';
import 'package:islami_app/ui/home/Sebha/sebha_screen.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexOfSelectedIcon=3;

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.mainBackGroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar:
            BottomNavigationBar(onTap: (index){

              setState(() {
                indexOfSelectedIcon=index;
              });
            },currentIndex: indexOfSelectedIcon, items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_radio.png')),
              label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: AppLocalizations.of(context)!.sebha),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: AppLocalizations.of(context)!.ahadeth),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings),
        ]),
         body:pages[indexOfSelectedIcon]

      ),
    );
  }

  List<Widget> pages=[
    RadioScreen(),
    SebhaScreen(),
    HadethScreen(),
    QuranScreen(),
    SettingsScreen()
  ];
}
