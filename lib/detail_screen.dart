// import 'package:flutter/material.dart';
// import 'language.dart';

// class DetailScreen extends StatelessWidget {
//   final String locale;
//   final int screenId;

//   DetailScreen({required this.locale, required this.screenId});

//   @override
//   Widget build(BuildContext context) {
//     final t = localizedStrings[locale]!;

//     return Scaffold(
//       appBar: AppBar(title: Text('${t['detail']} $screenId')),
//       body: Center(
//         child: Text(
//           '${t['detail']} $screenId の内容',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

//◯更に画面遷移を追加
import 'package:flutter/material.dart';
import 'language.dart';
import 'sub_screen.dart';

class DetailScreen extends StatelessWidget {
  final String locale;
  final int screenId;

  DetailScreen({required this.locale, required this.screenId});

  @override
  Widget build(BuildContext context) {
    final t = localizedStrings[locale]!;

    return Scaffold(
      appBar: AppBar(title: Text('${t['detail']} $screenId')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '${t['detail']} $screenId の内容',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              child: Text('Sub画面 A へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SubScreen(
                      locale: locale,
                      parentId: screenId,
                      subId: 'A',
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Sub画面 B へ'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SubScreen(
                      locale: locale,
                      parentId: screenId,
                      subId: 'B',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
