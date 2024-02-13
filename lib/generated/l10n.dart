// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ORDER YOU FOOD NOW`
  String get title_onboarding1 {
    return Intl.message(
      'ORDER YOU FOOD NOW',
      name: 'title_onboarding1',
      desc: '',
      args: [],
    );
  }

  /// `search for you favorite food and make your order`
  String get descr_onboarding1 {
    return Intl.message(
      'search for you favorite food and make your order',
      name: 'descr_onboarding1',
      desc: '',
      args: [],
    );
  }

  /// `CAREFULLY PREPARED`
  String get title_onboarding2 {
    return Intl.message(
      'CAREFULLY PREPARED',
      name: 'title_onboarding2',
      desc: '',
      args: [],
    );
  }

  /// `all kind of foods are prepared in profissional way`
  String get descr_onboarding2 {
    return Intl.message(
      'all kind of foods are prepared in profissional way',
      name: 'descr_onboarding2',
      desc: '',
      args: [],
    );
  }

  /// `FAST DELIVERY`
  String get title_onboarding3 {
    return Intl.message(
      'FAST DELIVERY',
      name: 'title_onboarding3',
      desc: '',
      args: [],
    );
  }

  /// `you can ask for delivery order to get it fast`
  String get descr_onboarding3 {
    return Intl.message(
      'you can ask for delivery order to get it fast',
      name: 'descr_onboarding3',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get button_get_start {
    return Intl.message(
      'Get Started',
      name: 'button_get_start',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
