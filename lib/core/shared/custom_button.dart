import 'package:flutter/material.dart';
import 'package:offer/core/constant/app_textstyles.dart';

class CustomButton extends StatelessWidget {
 const  CustomButton({
    super.key,
    this.onpress,
    this.fillColor,
    required this.title,
  });
final void Function() ? onpress;
 final Color ?fillColor;
 final String title;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      fillColor: fillColor,
      onPressed: onpress,
      child:  Text(
        title,
        style: AppTextStyles.textStyle16.copyWith(color: Colors.black) ,
      ),
    );
  }
}