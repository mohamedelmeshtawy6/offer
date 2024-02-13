// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "button_get_start": MessageLookupByLibrary.simpleMessage("Get Started"),
        "descr_onboarding1": MessageLookupByLibrary.simpleMessage(
            "search for you favorite food and make your order"),
        "descr_onboarding2": MessageLookupByLibrary.simpleMessage(
            "all kind of foods are prepared in profissional way"),
        "descr_onboarding3": MessageLookupByLibrary.simpleMessage(
            "you can ask for delivery order to get it fast"),
        "title_onboarding1":
            MessageLookupByLibrary.simpleMessage("ORDER YOU FOOD NOW"),
        "title_onboarding2":
            MessageLookupByLibrary.simpleMessage("CAREFULLY PREPARED"),
        "title_onboarding3":
            MessageLookupByLibrary.simpleMessage("FAST DELIVERY")
      };
}
