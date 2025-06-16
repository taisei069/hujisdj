import 'package:flutter/material.dart';
import 'language_selector.dart';
import 'home_screen.dart';
//import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, String locale) {
    final state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _locale;

  void setLocale(String locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: _locale == null
          ? LanguageSelector()
          : HomeScreen(locale: _locale!),
    );
  }
}
