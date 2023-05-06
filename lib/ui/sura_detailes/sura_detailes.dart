import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/sura_detailes/sura_style.dart';

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
    if (suraContent.isEmpty) readFiles(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامي'),
        ),
        body: Column(

          children: [
            Container(
              margin: EdgeInsets.only(right: 60,top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('  سورة ${args.title}   ',
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.play_circle,
                    size: 30,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              thickness: 2,
              indent: 30,
              endIndent: 50,
            ),
            Expanded(
                child: Card(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  elevation: 25,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ) ,
                  child: ListView.separated(
              itemBuilder: (context, index) => SuraStyle(suraContent[index]),
              itemCount: suraContent.length,
              separatorBuilder: (context, index) => Divider(
                    color: Theme.of(context).primaryColor,
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
