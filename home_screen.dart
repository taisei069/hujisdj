import 'package:flutter/material.dart';
import 'language.dart';
import 'detail_screen.dart';
//import 'main.dart';
//import 'language_selector.dart';

class HomeScreen extends StatelessWidget {
  final String locale;
  HomeScreen({required this.locale});

  @override
  Widget build(BuildContext context) {
    final t = localizedStrings[locale]!;

    final buttons = [
      {'title': '${t['detail']} 1', 'id': 1},
      {'title': '${t['detail']} 2', 'id': 2},
      {'title': '${t['detail']} 3', 'id': 3},
    ];

    return Scaffold(
      appBar: AppBar(title: Text(t['home']!)),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          final btn = buttons[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 80),
                textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(
                      locale: locale,
                      screenId: btn['id'] as int,
                    ),
                  ),
                );
              },
              child: Text(btn['title'] as String),
            ),
          );
        },
      ),
    );
  }
}
