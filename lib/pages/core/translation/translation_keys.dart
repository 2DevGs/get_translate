import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

enum TranslateKey {
  titleApp('title_app'),
  welcome('welcome'),
  userListTitleSimple(
    'user_list_title_simple',
    plural: 'user_list_title_simple_plural',
  ),
  userListTitle(
    'user_list_title',
    plural: 'user_list_title_plural',
  );

  final String key;
  final String? plural;

  const TranslateKey(this.key, {this.plural});

  String tr() {
    return key.tr;
  }
  
  String get trr => key.tr;

  String trParams(Map<String, String> params) {
    return key.trParams(params);
  }

  String trPlural(int total) {
    if(plural != null){
      return key.trPlural(plural, total);
    }
    return '';
  }

  String trPluralParams(int total, Map<String, String> params) {
    if(plural != null){
      return key.trPluralParams(plural, total, params);
    }
    return '';
  }

}

class TranslationKeys extends Translations {

  var ptKeys = <String,String>{};
  var enKeys = <String,String>{};
  var sbKeys = <String,String>{};
  var ruKeys = <String,String>{};

  Future<void> load() async {
    ptKeys = Map<String,String>.from(jsonDecode(await rootBundle.loadString('assets/locales/pt.json')));
    enKeys = Map<String,String>.from(jsonDecode(await rootBundle.loadString('assets/locales/en.json')));
    ruKeys = Map<String,String>.from(jsonDecode(await rootBundle.loadString('assets/locales/ru.json')));
    sbKeys = Map<String,String>.from(jsonDecode(await rootBundle.loadString('assets/locales/sb.json')));
    // ruKeys.addAll(jsonDecode(await rootBundle.loadString('assets/locales/sb.json')));
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'pt_BR': ptKeys,
        'en_US': enKeys,
        'sb_SB': sbKeys,
        'ru_MO': ruKeys,
      };
}
