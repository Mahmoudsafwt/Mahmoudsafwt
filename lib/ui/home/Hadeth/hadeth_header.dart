import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth_detailes.dart';

import 'hadeth.dart';

class HadethHeader extends StatelessWidget {
  String title;
  String content;

  HadethHeader(this.title, {this.content = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetalies.routeName,
            arguments: Hadeth(title,content));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(title,
            style: const TextStyle(fontSize: 24, color: Colors.black)),
      ),
    );
  }
}


