

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:offer/core/services/shared_storage.dart';

part 'singin_state.dart';

class SinginCubit extends Cubit<SinginState> {
  SinginCubit() : super(SinginInitial());




changlang(String lang){
if(lang== Intl.getCurrentLocale()
){}
else{ 
  SharedStorage.sharedStorage.putlanguage(lang);
  
   emit(
  LangChangedProcess(lang));
}
}


}






