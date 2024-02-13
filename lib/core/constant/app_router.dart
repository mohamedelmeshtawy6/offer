import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:offer/feature/auth/view/signin_view.dart';
import 'package:offer/feature/auth/view/signin_view.dart';
import 'package:offer/feature/auth/view/signin_view.dart';
import 'package:offer/feature/onboarding/data/repo/onboarding_base_repo_implement.dart';
import 'package:offer/feature/onboarding/view/onboarding_view.dart';
import 'package:offer/feature/onboarding/viewmodel/cubit/onboarding_cubit.dart';

abstract class AppRouter {
  static const onBordingView = '/';
  static const SignView = '/signin';

  static final route = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return   BlocProvider(
          create: (context) => OnboardingCubit(onBoardingBaseRepo: OnBoardingBaseRepoImplement())..getData(context)..initialzePageViewController(),
          child:const OnBoarding(),
        );
      },
    ),
    GoRoute(
      path: "/signin",
      builder: (context, state) {
        return  const  SigninView();
      },
    ),
  ]);
}
