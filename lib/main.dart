import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio/style/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      home: HomePage(),
    );
  }
}
