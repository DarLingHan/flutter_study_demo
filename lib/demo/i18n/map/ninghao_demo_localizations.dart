import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NinghaoDemoLocalizations {
  final Locale locale;
  NinghaoDemoLocalizations(this.locale);

  static NinghaoDemoLocalizations of(BuildContext context) {
    return Localizations.of(context, NinghaoDemoLocalizations);
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好！',
    }
  };
  String? get title {
    return _localized[locale.languageCode]!['title'];
  }
}

class NinghaoDemoLocalizationsDelegate
    extends LocalizationsDelegate<NinghaoDemoLocalizations> {
  NinghaoDemoLocalizationsDelegate();
  @override
  Future<NinghaoDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<NinghaoDemoLocalizations>(
        NinghaoDemoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  bool shouldReload(
      covariant LocalizationsDelegate<NinghaoDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
  }
}
