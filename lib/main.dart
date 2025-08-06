import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/pages/core/translation/translation_keys.dart';
import 'package:get_translate/pages/home_page.dart';

late TranslationKeys tanslationKeys;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tanslationKeys = TranslationKeys();
  await tanslationKeys.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: tanslationKeys,
      locale: const Locale('pt', 'BR'),
      // locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
