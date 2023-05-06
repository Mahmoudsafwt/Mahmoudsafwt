import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter=0;

  List<String>tsabeh=['سبحان الله','الحمد لله','الله اكبر'];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(



        children: [

          Image.asset('assets/images/head_sebha_logo.png',),
          Image.asset('assets/images/body_sebha_logo.png'),
          const Text(
            'عدد التسبيحات',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: (){
              counter++;
              if(counter==33)
              {
                index++;
                counter=0;
              }
              if(index>2)
              {
                index=0;
              }else

              setState(() {

              });
            }
            ,
            child: Container(
              alignment: Alignment.center,
              width: 70,
              height: 90,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Text(textAlign: TextAlign.center,'$counter',style: const TextStyle(
                  color: Colors.black, fontSize: 40, fontWeight: FontWeight.w400),),
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
            child: Text(textAlign: TextAlign.center,'${tsabeh[index]}',style: const TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.w400),),
          ),
          const Spacer(flex:5 ),
        ],
      ),
    );
  }
}
