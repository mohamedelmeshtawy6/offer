import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offer/feature/onboarding/view/widgets/page_view_builder.dart';
import 'package:offer/feature/onboarding/viewmodel/cubit/onboarding_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScafoldBody extends StatelessWidget {
  ScafoldBody({
    super.key,
  });

  //!are you position here is correct
  /*
  i replaced define it in cubit and can remove if you want
  */ 
   //final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Expanded(
          child: SizedBox(
            width: double.infinity,
            child: PageViewBuilder(),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
    
                effect: const SwapEffect(type: SwapType.yRotation,
                    activeDotColor: Colors.white,
                    dotColor: Colors.black,
                    dotHeight:  10,
                    dotWidth: 10,
                    spacing: 15),
                controller: BlocProvider.of<OnboardingCubit>(context).pageController,             
             
                count:
                    BlocProvider.of<OnboardingCubit>(context).staticData.length,
              ),
            ),
        const SizedBox(
          height: 80,
        )
      ],
    );
  }
}
