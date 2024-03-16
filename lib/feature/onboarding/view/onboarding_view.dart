import 'package:flutter/material.dart';
import 'package:offer/feature/onboarding/view/widgets/scafold_body.dart';

class OnBoardingView extends StatelessWidget {
 const OnBoardingView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        body: ScafoldBody()
    
    );
  }
}

