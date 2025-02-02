import 'package:flutter/material.dart';

class CampusGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kampüs Rehberi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildSection(
            title: 'Laboratuvarlar',
            imageUrl: 'https://turkeycampus.com/storage/post/tr/1720602002.webp',
            description: 'Üniversitemizde modern laboratuvarlar bulunmaktadır. Kimya, biyoloji ve mühendislik alanlarında zengin imkanlar sunulmaktadır.',
            details: 'Laboratuvarlarımızda çeşitli projeler ve araştırmalar için gelişmiş cihazlar yer alıyor.',
          ),
          _buildSection(
            title: 'Kütüphane',
            imageUrl: 'https://kutuphane.biruni.edu.tr/wp-content/uploads/2023/02/biruni-universitesi-132-scaled.jpg',
            description: 'Geniş bir koleksiyona sahip kütüphanemiz öğrencilerimize hizmet vermektedir. Elektronik kaynaklar da mevcuttur.',
            details: 'Kütüphanemizde kitaplar, dergiler ve dijital arşivlere ulaşabilirsiniz. Ayrıca sessiz çalışma alanları da bulunmaktadır.',
          ),
          _buildSection(
            title: 'Spor Salonları',
            imageUrl: 'https://www.biruni.edu.tr/content/images/uploads/spor%20mobil,4560_big.png',
            description: 'Spor salonlarımızda çeşitli spor imkanları sunulmaktadır. Sağlıklı yaşamı destekleyen modern tesislerimiz mevcuttur.',
            details: 'Farklı spor branşları için alanlar bulunmakta, ayrıca grup dersleri ve fitness imkanları da mevcuttur.',
          ),
          _buildSection(
            title: 'Yemekhane',
            imageUrl: 'https://media.licdn.com/dms/image/v2/D4D22AQFSeFNt50mbQA/feedshare-shrink_800/feedshare-shrink_800/0/1697609872284?e=2147483647&v=beta&t=XedPSd_Ihie33eSVTQmTVtZ5lqI17dM5-wA3Pr4wuX8',
            description: 'Öğrencilerimize sağlıklı ve uygun fiyatlı yemek seçenekleri sunulmaktadır.',
            details: 'Yemekhanemizde diyet menülerinin yanı sıra, çeşitli dünya mutfaklarından seçenekler de sunulmaktadır.',
          ),
          _buildSection(
            title: 'Çeşitli Etkinlik Alanları',
            imageUrl: 'https://muhendislik.biruni.edu.tr/wp-content/uploads/2024/05/WhatsApp-Image-2024-04-05-at-11.52.14-1.jpeg',
            description: 'Kampüsümüzde çeşitli kültürel etkinlikler ve seminerler düzenlenmektedir.',
            details: 'Güncel etkinlik takvimine üniversitenin web sitesinden veya kampüs uygulamasından ulaşılabilir.',
          ),
          _buildSection(
            title: 'Bilgisayar Laboratuvarları',
            imageUrl: 'https://myo.biruni.edu.tr/wp-content/uploads/2021/02/20210203_143044-1024x768.jpg',
            description: 'Gelişmiş bilgisayar laboratuvarlarımızda yazılım geliştirme ve tasarım çalışmaları yapılabilir.',
            details: 'Ücretsiz internet erişimi, güçlü bilgisayarlar ve yazılım desteği sunulmaktadır.',
          ),
          _buildSection(
            title: 'Rekreasyon Alanları',
            imageUrl: 'https://media.licdn.com/dms/image/v2/D4D22AQFBX1LhLpQ2og/feedshare-shrink_800/feedshare-shrink_800/0/1708689262689?e=2147483647&v=beta&t=jqLmVuyQZXHCuPQG563fWCLaw7lw3Ur44GXKOnJWczU',
            description: 'Kampüsümüzde dinlenme ve sosyal aktiviteler için çeşitli alanlar bulunmaktadır.',
            details: 'Yeşil alanlarda açık hava etkinlikleri, grup çalışmaları ve spor aktiviteleri yapılabilir.',
          ),

        ],
      ),
    );
  }

  Widget _buildSection({required String title, required String imageUrl, required String description, required String details}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(description, style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
          SizedBox(height: 8),
          Text('Detaylar: $details', style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}
