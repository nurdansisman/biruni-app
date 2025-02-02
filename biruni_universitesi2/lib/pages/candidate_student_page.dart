import 'package:flutter/material.dart';

class CandidateStudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aday Öğrenci'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildTitleSection(),
            SizedBox(height: 16),
            _buildIntroductionText(),
            SizedBox(height: 16),
            _buildApplicationProcessSection(),
            SizedBox(height: 24),
            _buildUniversityFeaturesSection(),
            SizedBox(height: 24),
            _buildFAQButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aday Öğrenci Bilgileri',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Divider(thickness: 2, color: Colors.blue.shade900),
      ],
    );
  }

  Widget _buildIntroductionText() {
    return Text(
      'Biruni Üniversitesi’ne hoş geldiniz! Üniversitemiz, aday öğrenciler için '
          'çeşitli rehberlik hizmetleri, tanıtım günleri ve başvuru süreçleri sunmaktadır.',
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildApplicationProcessSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Başvuru Süreci',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Text(
          'Aday öğrenciler, üniversitemizin web sitesinde yer alan online başvuru sistemini kullanarak başvurularını tamamlayabilirler.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildUniversityFeaturesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Öne Çıkan Özellikler',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Text(
          'Biruni Üniversitesi, öğrencilere modern kampüs olanakları, güçlü akademik kadro, '
              'uluslararası işbirlikleri ve sürekli gelişen eğitim programları ile yüksek kaliteli eğitim sunmaktadır. '
              'Bunların yanı sıra, öğrencilere çeşitli sosyal ve kültürel etkinlikler, araştırma fırsatları ve '
              'kariyer desteği sağlanmaktadır.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Link or additional functionality can be added here
          },
          child: Text('Daha Fazla Bilgi'),
        ),
      ],
    );
  }

  Widget _buildFAQButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showFAQDialog(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade900, // Buton rengi mavi
      ),
      child: Text('SSS (Sıkça Sorulan Sorular)', style: TextStyle(color: Colors.white)),
    );
  }

  void _showFAQDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Sıkça Sorulan Sorular'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFAQItem('Başvuru Tarihleri Ne Zaman?',
                    'Başvuru tarihlerinin belirtilen dönemde güncel olarak web sitesinde duyurulması gerekmektedir.'),
                _buildFAQItem('Başvuru İçin Hangi Belgeler Gerekli?',
                    'Başvuru için kimlik belgesi, diploma veya geçici mezuniyet belgesi gibi temel belgeler istenmektedir.'),
                _buildFAQItem('Başvuru Süreci Nereden Takip Edilebilir?',
                    'Başvuru süreci, üniversitenin online başvuru sistemi üzerinden takip edilebilir.'),
                _buildFAQItem('Başvurumu Yaparken Hangi Kriterler Göz Önünde Bulundurulmalı?',
                    'Akademik başarı, sınav sonuçları ve başvuru kriterleri dikkate alınarak değerlendirme yapılır.'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Kapat'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
          ),
          SizedBox(height: 4),
          Text(
            answer,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
