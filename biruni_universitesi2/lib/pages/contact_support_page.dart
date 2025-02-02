import 'package:flutter/material.dart';

class ContactSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim ve Destek', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'İletişim ve Destek',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Biruni Üniversitesi ile iletişim kurmak için aşağıdaki bilgileri kullanabilirsiniz:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Telefon: +90 212 123 45 67\nE-posta: info@biruni.edu.tr\nAdres: Biruni Üniversitesi, '
                  '                   Yenibosna Merkez Mahallesi, Çobançeşme Mevkii, 34295 Bahçelievler/İstanbul, Türkiye.',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
