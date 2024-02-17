import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.textEditingController, this.supIcon, this.paddinghorizantle});
final String ?hintText;
final TextEditingController ?textEditingController;
final Widget ?supIcon;
final double ?paddinghorizantle;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal:paddinghorizantle??0 ),
        child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
        fillColor: Colors.white,
        suffix: textEditingController!.text.isNotEmpty?supIcon:const SizedBox() ,
        hintText: hintText,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 53, 52, 52,),fontSize: 18),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(strokeAlign: 2, width: 2, color: Colors.black))),
                    
      ),
    );
  }
}
