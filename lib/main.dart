import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tiin_cashback/core/constants/exports.dart';
import 'package:tiin_cashback/provider/theme/theme_data.dart';

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
    return ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(ThemeData.dark()),
      child: Consumer<ThemeChanger>(
        builder: (context, model, child) => const MaterialAppWidget(),
      ),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.getTheme(),
      home: SplashScreen(),
    );
  }
}
