import 'package:flutter/material.dart';
import 'language.dart';

class SubScreen extends StatelessWidget {
  final String locale;
  final int parentId;
  final String subId;

  SubScreen({
    required this.locale,
    required this.parentId,
    required this.subId,
  });

  @override
  Widget build(BuildContext context) {
    final t = localizedStrings[locale]!;

    return Scaffold(
      appBar: AppBar(title: Text('${t['detail']} $parentId-$subId')),
      body: Center(
        child: Text(
          'これは ${t['detail']} $parentId → Sub画面 $subId です',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
