import 'package:flutter/material.dart';

class AcademicProgramsPage extends StatelessWidget {
  final List<Map<String, String>> programs = [
    {
      'programName': 'Tıp Fakültesi',
      'details': 'Tıp Fakültesi, sağlık sektöründe lider bireyler yetiştirmeyi amaçlar.'
    },
    {
      'programName': 'Diş Hekimliği Fakültesi',
      'details': 'Diş Hekimliği Fakültesi, ağız ve diş sağlığı alanında uzmanlar yetiştirir.'
    },
    {
      'programName': 'Eczacılık Fakültesi',
      'details': 'Eczacılık Fakültesi, ilaç ve farmasötik bilimler alanında eğitim sunar.'
    },
    {
      'programName': 'Mühendislik ve Doğa Bilimleri Fakültesi',
      'details': 'Mühendislik ve Doğa Bilimleri Fakültesi, çeşitli mühendislik disiplinlerinde eğitim sunar.'
    },
    {
      'programName': 'Eğitim Fakültesi',
      'details': 'Eğitim Fakültesi, öğretmen adaylarına eğitim vermektedir.'
    },
    {
      'programName': 'Sağlık Bilimleri Fakültesi',
      'details': 'Sağlık Bilimleri Fakültesi, çeşitli sağlık alanlarında eğitim sunar.'
    },
    {
      'programName': 'İktisadi, İdari ve Sosyal Bilimler Fakültesi',
      'details': 'Bu fakülte, ekonomi, işletme ve sosyal bilimler alanlarında eğitim sunar.'
    },
    {
      'programName': 'Hukuk Fakültesi',
      'details': 'Hukuk Fakültesi, adalet ve hukuk sistemine katkıda bulunacak bireyler yetiştirir.'
    },
    {
      'programName': 'Güzel Sanatlar Fakültesi',
      'details': 'Güzel Sanatlar Fakültesi, sanat ve tasarım alanlarında eğitim sunar.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akademik Programlar'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ListView.builder(
        itemCount: programs.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                programs[index]['programName']!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                programs[index]['details']!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue.shade900),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramDetailsPage(
                      programName: programs[index]['programName']!,
                      details: programs[index]['details']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ProgramDetailsPage extends StatelessWidget {
  final String programName;
  final String details;

  const ProgramDetailsPage({
    required this.programName,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programName),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              programName,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 16),
            Text(
              details,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Biruni Üniversitesi',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.grey.shade700),
      ),
    ),
    home: AcademicProgramsPage(),
  ));
}
