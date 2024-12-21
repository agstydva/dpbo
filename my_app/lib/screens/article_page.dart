import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  // Data Dummy
  // Gambar, Judul, Kategori dan Tanggal dalam Fitur Article
  final List<Map<String, String>> articles = [
    {
      'image': 'images/test1_artikel.jpg',
      'category': 'NASIONAL',
      'date': 'Selasa, 27 November 2024 - 04:04 WIB',
      'title': 'Pertamina tanam mangrove peringati Hari Lingkungan Hidup',
    },
    {
      'image': 'images/test2_artikel.jpg',
      'category': 'PHOTO',
      'date': 'Selasa, 19 November 2024 - 19:31 WIB',
      'title': 'Prabowo Bertemu Sekjen PBB di Brasil, Bahas Palestina dan Perubahan Iklim',
    },
    {
      'image': 'images/test3_artikel.jpg',
      'category': 'NASIONAL',
      'date': 'Selasa, 12 November 2024 - 08:04 WIB',
      'title': 'IBerita Harian WED 2023 Hari Lingkungan Hidup Sedunia Terbaru Hari Ini Kabar Terkini',
    },
    {
      'image': 'images/test4_artikel.jpg',
      'category': 'SAINS',
      'date': 'Senin, 4 November 2024 - 14:54 WIB',
      'title': 'Berita Terkini untuk Lingkungan - VOI - Waktunya Merevolusi Pemberitaan',
    },
    {
      'image': 'images/test5_artikel.jpg',
      'category': 'SAINS',
      'date': 'Rabu, 16 Oktober 2024 - 13:42 WIB',
      'title': 'Perempuan Hadir Menjadi Pelopor dan Pejuang Lingkungan',
    },
    {
      'image': 'images/test6_artikel.jpeg',
      'category': 'NASIONAL',
      'date': 'Selasa, 8 Oktober 2024 - 10:15 WIB',
      'title': 'Pemerintah dorong investasi berwawasan lingkungan di Indonesia',
    },
    {
      'image': 'images/test7_artikel.jpg',
      'category': 'NASIONAL',
      'date': 'Selasa, 17 Oktober 2024 - 07:15 WIB',
      'title': 'Menteri LHK Tekankan Pentingnya Bangun Generasi Cinta Lingkungan',
    },
    {
      'image': 'images/test8_artikel.jpg',
      'category': 'SAINS',
      'date': 'Selasa, 29 Oktober 2024 - 10:45 WIB',
      'title': 'Peringati Hari Lingkungan Hidup Tahun 2023, Dilakukan Gotong Royong Massal',
    },
    {
      'image': 'images/test9_artikel.jpeg',
      'category': 'NASIONAL',
      'date': 'Rabu, 16 Oktober 2024 - 13:42 WIB',
      'title': 'Sebegini Parah Ternyata Masalah Sampah Plastik di Indonesia',
    },
    {
      'image': 'images/test10_artikel.jpg',
      'category': 'NASIONAL',
      'date': 'Selasa, 8 Oktober 2024 - 10:15 WIB',
      'title': 'Sampah Plastik Meluap, Wali Kota Palangkaraya Keluarkan Edaran Baru',
    },
    {
      'image': 'images/test11_artikel.jpg',
      'category': 'SAINS',
      'date': 'Selasa, 17 Oktober 2024 - 07:15 WIB',
      'title': 'Kolaborasi Pendanaan Guna Atasi Sampah Plastik di Laut',
    },
    {
      'image': 'images/test12_artikel.jpg',
      'category': 'SAINS',
      'date': 'Selasa, 29 Oktober 2024 - 10:45 WIB',
      'title': 'AQUA Kelola 1,400 Ton Sampah untuk Wujudkan Komitmen Bijak Berplastik',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Teks Artikel Paling atas
      appBar: AppBar(
        title: Text(
          "Article",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 236, 241, 251),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar di Kiri
                Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(article['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Spasi
                SizedBox(width: 16),
                // Detail Artikel di Kanan
                Expanded(
                  child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Kategori dan Tanggal
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 160, 11),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              article['category']!,
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            article['date']!,
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      // Judul Artikel
                      Text(
                        article['title']!,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
