import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage{
SharedStorage._();
static SharedStorage sharedStorage=SharedStorage._();
 late  SharedPreferences _sharedPreferences;


 Future<void> initialize()async{

 _sharedPreferences= await SharedPreferences.getInstance();

}


putlanguage(String lanug)async{
await _sharedPreferences.setString('lang', lanug);
}
  String? getlanguage(){
return _sharedPreferences.getString('lang');
}

clearlangu() async{

await _sharedPreferences.clear();


}



}