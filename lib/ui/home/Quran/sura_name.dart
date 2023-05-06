import 'package:flutter/material.dart';
import 'package:islami_app/ui/sura_detailes/sura_detailes.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;
  SuraNameWidget(this.title,this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:(){
      Navigator.pushNamed(context, SuraDetilesScreen.routeName,
      arguments: SuraDetailesScreenArgs(title, index)
      );
    } ,
      child: Container(
        alignment: Alignment.center,
        child: Text(title,style: const TextStyle(fontSize: 24,color: Colors.black)),
      ),
    );
  }
}
