import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  final events = [
    {'title': 'Kariyer Günleri', 'date': '15 Ocak 2024'},
    {'title': 'Mezuniyet Töreni', 'date': '20 Haziran 2024'},
    {'title': 'Yaz Okulu Tanıtım Toplantısı', 'date': '5 Mart 2024'},
    {'title': 'Teknoloji Fuarı', 'date': '25 Mayıs 2024'},
    {'title': 'Bilimsel Araştırma Semineri', 'date': '10 Nisan 2024'},
    {'title': 'Geleneksel Yemek Festivali', 'date': '12 Temmuz 2024'},
    {'title': 'Uluslararası Konferans', 'date': '2 Eylül 2024'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etkinlikler ve Duyurular', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Etkinlikler ve Duyurular',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Üniversitemizde düzenlenen etkinlikler ve önemli duyurular hakkında bilgi almak için bu bölümü takip edebilirsiniz.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Etkinlik kartları ile listeleme
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        event['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      subtitle: Text(
                        event['date']!,
                        style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                      ),
                      trailing: Icon(Icons.event, color: Colors.blue.shade900),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
