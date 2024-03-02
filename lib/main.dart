import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:offer/core/constant/app_colors.dart';
import 'package:offer/core/constant/app_router.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/core/services/shared_storage.dart';
import 'package:offer/feature/auth/viewmodel/cubit/singin_cubit.dart';
import 'package:offer/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedStorage.sharedStorage.initialize();

  runApp(const AppStart());

}

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String ?lanuage=  SharedStorage.sharedStorage.getlanguage();
    return BlocProvider(
      create: (context) => SinginCubit(),
      child: BlocBuilder<SinginCubit, SinginState>(
        builder: (context, state) {
          return MaterialApp.router(
            locale:  state is LangChangedProcess?Locale(state.lang) : lanuage==null?null:Locale(lanuage),

              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              routerConfig: AppRouter.route,
              debugShowCheckedModeBanner: false,
              title: 'Food Delivery App',
              theme: ThemeData(
                  fontFamily: 'reboto',
                  textTheme: const TextTheme(
                      displaySmall: AppTextStyles.textStyle16,
                      displayMedium: AppTextStyles.textStyle18,
                      displayLarge: AppTextStyles.textStyle20,
                      titleSmall: AppTextStyles.textStyle22,
                      titleMedium: AppTextStyles.textStyle24,
                      titleLarge: AppTextStyles.textStyle26,
                      labelLarge: AppTextStyles.textbuttonStyle),
                  scaffoldBackgroundColor: AppColors.kprimaryColor,
                  brightness: Brightness.dark));
        },
      ),
    );
  }
}
