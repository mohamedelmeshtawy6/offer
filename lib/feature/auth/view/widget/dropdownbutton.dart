import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/feature/auth/viewmodel/cubit/singin_cubit.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String buttonval=Intl.getCurrentLocale();
 bool paddting=false;
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
 DropdownButton(
          borderRadius: BorderRadius.circular(25),
          icon: const Icon(Icons.language),
          isDense: false,
          iconSize: 20,
          onTap: () {
            setState(() {
            paddting=true;    
            });
          },
          
          dropdownColor: Colors.white.withOpacity(.4),
          iconEnabledColor: Colors.blue,
          style: AppTextStyles.textStyle18.copyWith(color: Colors.black)
          ,items:  const [
              DropdownMenuItem(
              value: 'en',
              child: Text(
                'English(US)',
              )),
            DropdownMenuItem(
            value: 'ar',
            child: Text(
              'العربية',
            ),
          ),
        ],
        
        
         onChanged: (String ?v) {
if(v!=buttonval){

setState(() {
  buttonval=v!;
  paddting=false;
  BlocProvider.of<SinginCubit>(context).changlang(v);

});



}
        }, value: buttonval),

        SizedBox(height: paddting?40:0,),
        const SizedBox(
          height: 40,
        ),

      ],);
  }
}