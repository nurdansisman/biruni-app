import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hakkında')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Başlık ve Tanıtım
            _buildTitleSection(),
            SizedBox(height: 16),
            _buildIntroductionText(),
            SizedBox(height: 16),

            // Misyon ve Vizyon
            _buildMissionVisionSection(),

            // Fakülteler
            SizedBox(height: 24),
            _buildFacultiesSection(),

            // Sosyal Olanaklar
            SizedBox(height: 24),
            _buildSocialFacilitiesSection(),
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
          'Biruni Üniversitesi Hakkında',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Divider(thickness: 2, color: Colors.blue.shade900),
      ],
    );
  }

  Widget _buildIntroductionText() {
    return Text(
      'Biruni Üniversitesi, Türkiye’nin önde gelen eğitim kurumlarından biri olup, sağlık bilimleri, mühendislik, sosyal bilimler ve daha birçok alanda eğitim veren, yenilikçi ve öğrenci odaklı bir üniversitedir. Üniversitemiz, teknolojiyi eğitimle buluşturmak ve geleceğin liderlerini yetiştirmek için güçlü bir altyapıya sahiptir.',
      style: TextStyle(fontSize: 16, height: 1.6, color: Colors.grey.shade700),
    );
  }

  Widget _buildMissionVisionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Misyonumuz',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        Text(
          'Bilimsel araştırmalarla topluma katkıda bulunmak ve öğrencilere kaliteli eğitim sunmak. Öğrencilerimizi global dünyada liderlik pozisyonlarına hazırlamak için uluslararası standartlarda eğitim veriyoruz.',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        SizedBox(height: 16),
        Text(
          'Vizyonumuz',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        Text(
          'Global ölçekte tanınan bir üniversite olmak ve topluma sürdürülebilir fayda sağlamak. Sürekli yenilenen bir eğitim anlayışıyla, üniversitemizi dünya çapında daha güçlü bir marka yapmak.',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  Widget _buildFacultiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fakültelerimiz ve Bölümlerimiz',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Text(
          '• Sağlık Bilimleri Fakültesi\n• Mühendislik Fakültesi\n• Sosyal Bilimler Fakültesi\n• İktisadi ve İdari Bilimler Fakültesi\n• Güzel Sanatlar Fakültesi',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  Widget _buildSocialFacilitiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sosyal Olanaklarımız',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
        ),
        SizedBox(height: 8),
        Text(
          'Üniversitemiz, öğrencilerine sadece akademik başarı değil, aynı zamanda sosyal gelişim için de çeşitli olanaklar sunmaktadır. Kampüsümüzde spor salonları, kültürel etkinlik alanları, kafeteryalar ve dinlenme alanları yer almaktadır. Ayrıca, öğrenci kulüpleri ve organizasyonlar, öğrencilerin sosyal sorumluluk projelerinde yer almasına olanak tanımaktadır.',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
