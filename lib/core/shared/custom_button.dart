import 'package:flutter/material.dart';
import 'package:offer/core/constant/app_textstyles.dart';

class CustomButton extends StatelessWidget {
 const  CustomButton({
    super.key,
    this.onpress,
    this.fillColor,
    required this.title,
     this.textStyle, 
     this.sideColor=Colors.black, this.paddinghorizantle=0
     
  });
final void Function() ? onpress;
 final Color ?fillColor;
 final String title;
  final  TextStyle ?textStyle;
final Color? sideColor;
final double ?paddinghorizantle; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: paddinghorizantle!),
      child: SizedBox(
        width: double.infinity,
        child: RawMaterialButton(
          
          textStyle:textStyle?? AppTextStyles.textStyle16.copyWith(color: Colors.black) ,
          
          shape: RoundedRectangleBorder(
          side: BorderSide(color: sideColor!),
              borderRadius: BorderRadius.circular(20)),
          fillColor: fillColor,
          onPressed: onpress,
          child:  Text(
            title,
          ),
        ),
      ),
    );
  }
}