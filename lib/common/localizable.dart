import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Localizable {
  static Localizable of(BuildContext context) {
    return Localizations.of<Localizable>(context, Localizable)!;
  }

  String getText(String key) => language[key];
}

late final Map<String, dynamic> language;

class LocalizableDelegate extends LocalizationsDelegate<Localizable> {
  const LocalizableDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);

  @override
  Future<Localizable> load(Locale locale) async {
    String string = await rootBundle
        .loadString("assets/strings/${locale.languageCode}.json");
    language = json.decode(string);
    return SynchronousFuture<Localizable>(Localizable());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<Localizable> old) => false;
}
