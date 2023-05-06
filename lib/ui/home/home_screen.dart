import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_screen.dart';
import 'package:islami_app/ui/home/Quran/quran_screen.dart';
import 'package:islami_app/ui/home/Radio/radio_screen.dart';
import 'package:islami_app/ui/home/Sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexOfSelectedIcon=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('اسلامي'),
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
              label: 'Radio'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
              label: 'Sebha'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
              label: 'Hadeth'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: 'quran'),
        ]),
         body:pages[indexOfSelectedIcon]
        // Column(
        //
        //   children: [
        //     Image.asset('assets/images/qur2an_screen_logo.png'),
        //     Expanded(child: ListView.builder(itemBuilder: (context, index) =>pages[index] ,itemCount: pages.length,)
        //
        //     )
        //   ],
        // ),
      ),
    );
  }

  List<Widget> pages=[
    RadioScreen(),
    SebhaScreen(),
    HadethScreen(),
    QuranScreen(),
  ];
}
