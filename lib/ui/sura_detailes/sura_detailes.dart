import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:islami_app/ui/sura_detailes/sura_style.dart';
import 'package:provider/provider.dart';

class SuraDetilesScreen extends StatefulWidget {
  static const String routeName = 'sura-detailes';

  @override
  State<SuraDetilesScreen> createState() => _SuraDetilesScreenState();
}

class _SuraDetilesScreenState extends State<SuraDetilesScreen> {
  List<String> suraContent = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailesScreenArgs;
    var settingsProvider = Provider.of<SettingProvider>(context);
    if (suraContent.isEmpty) readFiles(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.mainBackGroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامي'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 60, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('  سورة ${args.title}   ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: settingsProvider.isDark()
                                  ? Theme.of(context).accentColor
                                  : Colors.black)),
                  Icon(
                    Icons.play_circle,
                    size: Theme.of(context).iconTheme.size,
                    color: Theme.of(context).iconTheme.color,
                  )
                ],
              ),
            ),
            Divider(
              color: settingsProvider.isDark()
                  ? Theme.of(context).accentColor
                  : Colors.black,
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
              child: ListView.separated(
                itemBuilder: (context, index) => SuraStyle(suraContent[index]),
                itemCount: suraContent.length,
                separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).accentColor,
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 30),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Future<void> readFiles(int indexOfSura) async {
    String text =
        await rootBundle.loadString('assets/sur_files/${indexOfSura + 1}.txt');
    //suraContent=text;
    suraContent = text.split('\n');
    // print(text);
    setState(() {});
  }
}

class SuraDetailesScreenArgs {
  String title;
  int index;
  SuraDetailesScreenArgs(this.title, this.index);
}
