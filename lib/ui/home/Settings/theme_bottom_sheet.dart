import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell( onTap:(){
            settingsProvider.changeMode(ThemeMode.light);
          },child:settingsProvider.isDark()? getUnselectedItem(AppLocalizations.of(context)!.light):getSelectedItem(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(onTap:(){
            settingsProvider.changeMode(ThemeMode.dark);
          },child:settingsProvider.isDark()? getSelectedItem(AppLocalizations.of(context)!.dark):getUnselectedItem(AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: settingsProvider.isDark() == true
                        ? Theme.of(context).accentColor
                        : Colors.black,
                  )),
          Icon(
            Icons.check,
            color: settingsProvider.isDark() == true
                ? Theme.of(context).accentColor
                : Colors.black,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
