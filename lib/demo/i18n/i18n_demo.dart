import 'package:flutter/material.dart';
// import 'package:flutter_application_3/demo/i18n/map/ninghao_demo_localizations.dart';
import '../i18n/intl/ninghao_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              locale.toString(),
            ),
            Text(
              NinghaoDemoLocalizations.of(context).greet('ninghao'),
              // NinghaoDemoLocalizations.of(context).title as String,
              // Localizations.of(context, NinghaoDemoLocalizations).title,
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
      ),
    );
  }
}
