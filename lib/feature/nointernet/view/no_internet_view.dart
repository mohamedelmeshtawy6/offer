import 'package:flutter/material.dart';
import 'package:offer/core/constant/app_assets_path.dart';
import 'package:offer/core/constant/app_textstyles.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Center(child: Image.asset(AppAssetsPath.nointernet, fit:BoxFit.cover,))
        ,Text('check your Internet',style: AppTextStyles.textStyle20.copyWith(color: Colors.black),)
        ],),
    );
   
  }
}