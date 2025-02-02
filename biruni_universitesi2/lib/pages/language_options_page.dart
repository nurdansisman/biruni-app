import 'package:flutter/material.dart';

class LanguageOptionsPage extends StatelessWidget {
  final Function(Locale) setLocale;

  LanguageOptionsPage(this.setLocale);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> languages = [
      {'name': 'Türkçe', 'locale': Locale('tr', 'TR')},
      {'name': 'English', 'locale': Locale('en', 'US')},
      {'name': 'Deutsch', 'locale': Locale('de', 'DE')},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Dil Seçenekleri'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: languages.map((lang) {
          return ElevatedButton(
            onPressed: () => setLocale(lang['locale'] as Locale),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.language, color: Colors.white),
                SizedBox(width: 8),
                Text(lang['name'] as String),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
