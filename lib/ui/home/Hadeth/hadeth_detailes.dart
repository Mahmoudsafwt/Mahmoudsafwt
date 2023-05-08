import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Hadeth/hadeth.dart';

class HadethDetalies extends StatelessWidget {
  static const String routeName = 'hadeth-detaiels';

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
              margin: EdgeInsets.only(right: 60, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(' ${args.title}  ',
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
                child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              elevation: 25,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                  child: Text(
                args.content,
                style: const TextStyle(color: Colors.black, fontSize: 28),
              )),
            ))
          ],
        ),
      ),
    );
  }
}
