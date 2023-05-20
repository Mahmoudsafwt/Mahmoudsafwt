import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int index = 0;

  List<String> tsabeh = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله'
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Container(
      alignment: Alignment.center,
      child: Column(

        children: [
          Container(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2,top:MediaQuery.of(context).size.height*.02 ),
            alignment: Alignment.topCenter,
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height*.4,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(left: MediaQuery.of(context).size.width*.25,
                  top:MediaQuery.of(context).size.height*0.01 ,
                  bottom:MediaQuery.of(context).size.height*.26 ,
                  child: Image.asset(
                    settingsProvider.logoOfSebha(),
                  ),
                ),
                Positioned(
                top:MediaQuery.of(context).size.height*.08,
                right: MediaQuery.of(context).size.width*.2

                ,child: Image.asset(settingsProvider.bodyOfSebha())),
              ],
            ),
          ),
           SizedBox(
             height: MediaQuery.of(context).size.height*0.02,
           ),

           Text(
            AppLocalizations.of(context)!.numberOftasbeh,
            style: Theme.of(context).textTheme.headlineMedium,
          ),SizedBox(
            height: MediaQuery.of(context).size.height*0.02,
          ),
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              textAlign: TextAlign.center,
              '$counter',
              style:Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              if (counter >= 33) {
                counter = 0;
                index++;
              } else {
                counter++;
              }
              if (index >=4) {
                index = 0;
                counter = 0;
              }

              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                textAlign: TextAlign.center,
                '${tsabeh[index]}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
