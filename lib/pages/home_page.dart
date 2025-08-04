import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title_app'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'.trParams({'name': 'Gustavo Dias'})),
            Text('user_list_title_simple'.trPlural('user_list_title_simple_plural', 1)),
            Text('user_list_title_simple'.trPlural('user_list_title_simple_plural', 2)),
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
          ],
        ),
      ),
    );
  }
}
