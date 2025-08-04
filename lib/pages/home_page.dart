import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/pages/core/translation/translation_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateKey.titleApp.trr),
        // title: Text(TranslateKey.titleApp.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(TranslateKey.welcome.trParams({'name': 'Gustavo Dias'})),
            const SizedBox(
              height: 20,
            ),
            const Text('trPlural'),
            Text('user_list_title_simple'.trPlural('user_list_title_simple_plural', 1)),
            Text('user_list_title_simple'.trPlural('user_list_title_simple_plural', 2)),
            const SizedBox(
              height: 20,
            ),
            const Text('trPluralParams'),
            Text('user_list_title'.trPluralParams(
              'user_list_title_plural',
              2,
              {
                'total': '2',
              },
            )),
            Text('user_list_title'.trPluralParams(
              'user_list_title_plural',
              1,
              {
                'total': '1',
              },
            )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'US'));
              },
              child: const Text('Alterar US'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('pt', 'BR'));
              },
              child: const Text('Alterar BR'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Enum trPlural'),
            Text(TranslateKey.userListTitleSimple.trPlural(1)),
            Text(TranslateKey.userListTitleSimple.trPlural(2)),
            const SizedBox(
              height: 20,
            ),
            const Text('Enum trPluralParams'),
            Text(TranslateKey.userListTitle.trPluralParams(
              2,
              {
                'total': '2',
              },
            )),
            Text(TranslateKey.userListTitle.trPluralParams(
              1,
              {
                'total': '1',
              },
            )),
          ],
        ),
      ),
    );
  }
}
