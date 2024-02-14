import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/feature/nointernet/view/no_internet_view.dart';
import 'package:offer/feature/onboarding/view/widgets/scafold_body.dart';

class OnBoarding extends StatelessWidget {
 const OnBoarding({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        body: ScafoldBody()
    
    );
  }
}

