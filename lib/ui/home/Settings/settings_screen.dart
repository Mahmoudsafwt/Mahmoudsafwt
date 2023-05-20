import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Settings/language_bottom_sheet.dart';
import 'package:islami_app/ui/home/Settings/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingProvider>(context);
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(top: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                      width: 2, color: Theme.of(context).accentColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  settingProvider.isDark()? AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
             AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(top: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                      width: 2, color: Theme.of(context).accentColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   settingProvider.currentlocale=='en'? 'english':'العربية',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
          ),
        ]));
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
