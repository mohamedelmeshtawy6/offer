import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:offer/core/constant/app_router.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/core/shared/custom_button.dart';
import 'package:offer/feature/onboarding/viewmodel/cubit/onboarding_cubit.dart';
import 'package:offer/generated/l10n.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: BlocProvider.of<OnboardingCubit>(context).pageController,
      onPageChanged: (value) => BlocProvider.of<OnboardingCubit>(context)
          .animatePageviewTransition(value),
      itemCount: BlocProvider.of<OnboardingCubit>(context).staticData.length,
      itemBuilder: (c, index) => Column(
        children: [
          Image.asset(
            BlocProvider.of<OnboardingCubit>(context)
                .staticData[index]
                .imagepath,
            fit: BoxFit.contain,
            height: 350,
            width: double.infinity,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 160),
              child: Text(
                
                  BlocProvider.of<OnboardingCubit>(context)
                      .staticData[index]
                      .title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle22)),
          const SizedBox(
            height: 10,
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 250),
              child: Text(
                  BlocProvider.of<OnboardingCubit>(context)
                      .staticData[index]
                      .description,
                       
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle16)),
          const SizedBox(
            height: 30,
          ),
         
              BlocProvider.of<OnboardingCubit>(context).islastpage(index)?
            CustomButton(
              sideColor: Colors.black,
              paddinghorizantle: 40,
              textStyle: AppTextStyles.textbuttonStyle.copyWith(color: Colors.black),
              title: S.of(context).button_get_start,
              fillColor: Colors.white,
              onpress: () {
              GoRouter.of(context).pushReplacement(AppRouter.signView);
              },
            ):const SizedBox()
        ],
      ),
    );
  }
}
