import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int index = 0;

  List<String> tsabeh = ['سبحان الله', 'الحمد لله', 'الله اكبر','لا اله الا الله'];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            'assets/images/head_sebha_logo.png',
          ),
          Image.asset('assets/images/body_sebha_logo.png'),
          const Text(
            'عدد التسبيحات',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              if (counter >= 33) {
                counter = 0;
                index++;
              } else {
                counter++;
              }
              if (index >=4) {
                index = 0;
                counter = 0;
              }

              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              width: 70,
              height: 90,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                textAlign: TextAlign.center,
                '$counter',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              textAlign: TextAlign.center,
              '${tsabeh[index]}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
