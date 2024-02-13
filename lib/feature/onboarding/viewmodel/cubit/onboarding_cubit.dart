import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:offer/feature/onboarding/data/model/onboarding_model.dart';
import 'package:offer/feature/onboarding/data/repo/onboarding_base_repo.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({required this.onBoardingBaseRepo  })
      : super(OnboardingInitial());



  final OnBoardingBaseRepo onBoardingBaseRepo;

//? ican do this list in repo and connect with view;
/*
for my understand that because 
1- we use mvvm and view connect with vm 
2-seperate list from view too
3-
*/
 late final  List<OnBoardingModel> staticData;
  late final PageController pageController ;
  void getData(BuildContext context) {
    staticData = onBoardingBaseRepo.getOnboardingStaticData( );
  }

  initialzePageViewController(){
  
pageController=PageController();

  }

  animatePageviewTransition(int index){
pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);

  }

  bool islastpage(int index){

if (index==staticData.length-1) {
  return true;
}
 return false;

  }

 
}
