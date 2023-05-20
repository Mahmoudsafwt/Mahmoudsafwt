import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import'package:shared_preferences/shared_preferences.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
         InkWell(onTap: (){

           settingsProvider.changeLang('en');
           //saveData('en');
           
         },child:settingsProvider.currentlocale=='en'? getSelectedItem('English'):getUnselectedItem('English')),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          InkWell(onTap: (){
            settingsProvider.changeLang('ar');
            //saveData('en');
            
          },child:settingsProvider.currentlocale=='ar'? getSelectedItem('عربي'):getUnselectedItem('عربي')),


        ],
      ),
    );
  }
  // void saveData( String lang)
  // async{
  //   SharedPreferences pref=await SharedPreferences.getInstance();
  //   pref.setString("language", lang);
  // }


  Widget getSelectedItem(String title)
  {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return  Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(color: Colors.white10,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Theme.of(context).textTheme.headlineMedium?.copyWith(color:settingsProvider.isDark()==true? Theme.of(context).accentColor:Colors.black,)),
          Icon(Icons.check,color:settingsProvider.isDark()==true? Theme.of(context).accentColor:Colors.black,)
        ],

      ),
    );
  }

  Widget getUnselectedItem(String title){
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(title,style: Theme.of(context).textTheme.headlineMedium,),
    );
  }
}
