import 'package:flutter/material.dart';

class SuraStyle extends StatelessWidget {
  String content;
  SuraStyle(this.content);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(textAlign:TextAlign.center,
      content,
      style:Theme.of(context).textTheme.headlineSmall,
    ));
  }
}
