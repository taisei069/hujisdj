import 'package:flutter/material.dart';
import 'main.dart';

class LanguageSelector extends StatelessWidget {
  final Map<String, String> languages = {
    'ja': '日本語',
    'en': 'English',
    'zh': '中文',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('言語を選択')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: languages.entries.map((entry) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                MyApp.setLocale(context, entry.key);
              },
              child: Text(entry.value),
            ),
          );
        }).toList(),
      ),
    );
  }
}
