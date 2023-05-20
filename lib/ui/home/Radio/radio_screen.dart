import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_image.png',fit: BoxFit.fill,),
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05 ),
            child: Text(
              AppLocalizations.of(context)!.holyquranradio,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.06 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: Theme.of(context).accentColor,
                  size: Theme.of(context).iconTheme.size,

                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.1,
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  color: Theme.of(context).accentColor,
                  size: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.1,
                ),
                Icon(
                  Icons.skip_next,
                  color: Theme.of(context).accentColor,
                  size: Theme.of(context).iconTheme.size,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
