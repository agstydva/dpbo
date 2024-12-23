import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  final List<Map<String, String>> companies = [
    {
      'logo': 'images/ptplasticpay.png', // URL gambar logo Plasticpay
      'name': 'Plasticpay Indonesia (PT Plasticpay Teknologi Daur Ulang)',
      'description':
          'Sebuah platform digital yang memungkinkan pengguna mendaur ulang botol plastik dan mendapatkan poin yang dapat ditukar dengan berbagai produk atau layanan.',
    },
    {
      'logo':
          'images/pterecycleindo.jpeg', // URL gambar logo eRecycle
      'name': 'eRecycle (PT eRecycle Indonesia)',
      'description':
          'Aplikasi pengelolaan sampah daur ulang yang memberikan poin kepada pengguna yang mendaur ulang botol plastik. Poin ini dapat ditukar dengan saldo dompet digital atau voucher.',
    },
    {
      'logo': 'images/ptwaste4change.jpeg', // URL gambar logo Waste4Change
      'name': 'Waste4Change (PT Waste for Change Alam Indonesia)',
      'description':
          'Perusahaan ini fokus pada pengelolaan sampah terintegrasi. Meskipun lebih umum di bidang daur ulang, mereka menyediakan layanan pengumpulan dan pengolahan limbah plastik.',
    },
    {
      'logo': 'images/ptgringgo.png', // URL gambar logo Gringgo
      'name': 'Gringgo (PT Gringgo Indonesia Gemilang)',
      'description':
          'Perusahaan teknologi yang mempermudah pengelolaan dan daur ulang sampah melalui aplikasi berbasis AI. Solusi mereka membantu masyarakat mengelola limbah dan mengurangi sampah ke TPA.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company List'),
      ),
      body: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          final company = companies[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Image.network(
                company['logo']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.image_not_supported,
                    size: 50,
                  ); // Tampilkan ikon jika gagal memuat gambar
                },
              ),
              title: Text(
                company['name']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                company['description']!,
                style: TextStyle(fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}
