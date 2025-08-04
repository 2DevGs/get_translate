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
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          TranslateKey.titleApp.key: 'GetX Translate',
          'welcome': 'Hello @name',
          'user_list_title_simple': 'User',
          'user_list_title_simple_plural': 'Users',
          'user_list_title': '@total User',
          'user_list_title_plural': '@total Users',
        },
        'pt_BR': {
          'title_app': 'GetX Tradução',
          'welcome': 'Olá @name',
          'user_list_title_simple': 'Usuário',
          'user_list_title_simple_plural': 'Usuários',
          'user_list_title': '@total Usuário',
          'user_list_title_plural': '@total Usuários',
        },
      };
}
