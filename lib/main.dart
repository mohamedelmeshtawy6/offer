import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:offer/core/constant/app_colors.dart';
import 'package:offer/core/constant/app_router.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/generated/l10n.dart';

void main() {
  runApp(const AppStart());
}

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale( 'ar'),
       localizationsDelegates: const[
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      routerConfig: AppRouter.route,
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme:ThemeData(
             fontFamily: 'rubik',
             
          textTheme: const TextTheme( displayLarge:AppTextStyles.textStyle22,displayMedium:AppTextStyles.textStyle20,displaySmall: AppTextStyles.textStyle18 ,bodyLarge: AppTextStyles.textStyle18,bodyMedium: AppTextStyles.textStyle16,bodySmall: AppTextStyles.textStyle14  ),
          scaffoldBackgroundColor:AppColors.kprimaryColor)
 
    );
  }
}

