import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'ninghao_demo_messages_all.dart';

class NinghaoDemoLocalizations {
  static NinghaoDemoLocalizations of(BuildContext context) {
    return Localizations.of(context, NinghaoDemoLocalizations);
  }

  static Future<NinghaoDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode!.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return NinghaoDemoLocalizations();
    });
  }

  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );
  String greet(String name) => Intl.message('hello $name',
      name: 'greet', desc: 'greet someone.', args: [name]);
}

class NinghaoDemoLocalizationsDelegate
    extends LocalizationsDelegate<NinghaoDemoLocalizations> {
  NinghaoDemoLocalizationsDelegate();
  @override
  Future<NinghaoDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return NinghaoDemoLocalizations.load(locale);
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
