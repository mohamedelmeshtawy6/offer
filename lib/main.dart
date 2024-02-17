import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:offer/core/constant/app_colors.dart';
import 'package:offer/core/constant/app_router.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/core/services/shared_storage.dart';
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
    return MaterialApp.router(
        locale: const Locale('en'),
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
                titleSmall: AppTextStyles.textStyle22 ,
                titleMedium:  AppTextStyles.textStyle24,
                titleLarge:  AppTextStyles.textStyle26,
                labelLarge: AppTextStyles.textbuttonStyle 
               ),
               
               scaffoldBackgroundColor: AppColors.kprimaryColor,
               brightness: Brightness.dark
               
               ));
  }
}
