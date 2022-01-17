import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('uz', 'UZ'),
        Locale('ru', 'RU'),
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('ru', 'RU'),
      saveLocale: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormServices().name.text == null ? const MainPage() : SplashScreen(),
    );
  }
}
