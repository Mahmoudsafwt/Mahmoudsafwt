import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_header.dart';

import 'hadeth.dart';

class HadethScreen extends StatefulWidget {
  static const String routName='hadeth-screen';
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
 List<Hadeth> allHaeth=[];

  @override
  Widget build(BuildContext context) {
    if(allHaeth.isEmpty) {
      readHadethFile();
    }

    return Column(
      children: [
        Expanded(flex: 1,
          child: Image.asset(
              'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Text(
          'الاحاديث',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Expanded(flex: 3,child: allHaeth.isEmpty?
        Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor),):
        ListView.separated(itemBuilder: (context,index)=>HadethHeader(allHaeth[index].title,content: allHaeth[index].content), separatorBuilder:
            (context, index) {
          return Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
            indent: 34,
            endIndent: 34,
          );
        }, itemCount: allHaeth.length))
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> listOfHadeth=[];
    String hadeth =
        await rootBundle.loadString('assets/ahadeth_file/ahadeth .txt');
    List<String> oneHadeth = hadeth.split('#');
    for (int i = 0; i < oneHadeth.length; i++) {
     List<String>lines= oneHadeth[i].trim().split('\n');
    String title=lines[0];
     lines.removeAt(0);
     String content=lines.join('\n');
     Hadeth hadeth=Hadeth(title,content);
     listOfHadeth.add(hadeth);

    }
    allHaeth=listOfHadeth;
    setState(() {

    });

  }
}
