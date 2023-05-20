import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethDetalies extends StatelessWidget {
  static const String routeName = 'hadeth-detaiels';

  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.mainBackGroundImage()), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 60, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(' ${args.title}  ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color:settingProvider.isDark()?  Theme.of(context).accentColor: Colors.black)),

                ],
              ),
            ),
            Divider(
              color:settingProvider.isDark()? Theme.of(context).accentColor:Colors.black,
              thickness: 2,
              indent: 30,
              endIndent: 50,
            ),
            Expanded(
                child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              elevation: 25,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                  child: Text(
                args.content,
                style: Theme.of(context).textTheme.headlineSmall,
              )),
            ))
          ],
        ),
      ),
    );
  }
}
