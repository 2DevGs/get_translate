import 'package:get/get.dart';

class TranslationKeys extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title_app': 'GetX Translate',
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
