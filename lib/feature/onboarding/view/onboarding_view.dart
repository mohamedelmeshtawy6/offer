import 'package:flutter/material.dart';
import 'package:offer/feature/onboarding/view/widgets/scafold_body.dart';

class OnBoarding extends StatelessWidget {
 const OnBoarding({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 21, 23, 39),
        body: ScafoldBody(

        ));
  }
}

